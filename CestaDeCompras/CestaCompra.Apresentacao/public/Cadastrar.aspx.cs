using System;
using System.Web.UI.WebControls;
using System.Web.Security;
using CestaCompra.Data;
using CestaCompra.AcessoBD;
using CestaCompra.Data.Models;
using CestaCompra.Aplicacao;
using System.Linq;
using CestaCompra.Apresentacao.App_Start;
using Ninject;

namespace CestaCompra.Apresentacao
{
    public partial class _Cadastrar : System.Web.UI.Page
    {
        private ContextCestaBD cestaCompraDB = new ContextCestaBD();
        private IRepositorioConsumidor repositorioConsumidor;
        private IRepositorioCidade repositorioCidade;
        private AplConsumidor aplConsumidor;

        private SiteMaster _masterPage;
        private SiteMaster MasterPage
        {
            get
            {
                if (_masterPage == null)
                    _masterPage = Page.Master as SiteMaster;
                return _masterPage;
            }
            set
            {
                _masterPage = value;
            }
        }

        private int Id
        {
            get
            {
                int id = 0;
                try
                {
                    id = Convert.ToInt32(ViewState["Id"]);
                }
                catch
                {
                    id = 0;
                }
                return id;
            }
            set
            {
                ViewState["Id"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ControlesWeb.Page_Load(Page);
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            this.repositorioConsumidor = NinjectWebCommon.Kernel.Get<IRepositorioConsumidor>();
            this.repositorioCidade = NinjectWebCommon.Kernel.Get<IRepositorioCidade>();
            aplConsumidor = new AplConsumidor();
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {

        }

        private void validarFormulario()
        {

            if (this.TxtNome.Text.Trim() == string.Empty)
                throw new Exception("Informe o nome.");

            if (this.TxtSobrenome.Text.Trim() == string.Empty)
                throw new Exception("Informe o sobrenome.");

            if (this.TxtLogin.Text.Trim() == string.Empty)
                throw new Exception("Informe o login.");

            if (this.TxtSenha.Text.Trim() == string.Empty)
                throw new Exception("Informe a senha.");

            if (this.TxtEmail.Text.Trim() == string.Empty)
                throw new Exception("Informe o email.");

            DateTime effDate;

            try
            {
                effDate = DateTime.Parse(TxtDataNascimento.Text);
            }
            catch (FormatException ex)
            {
                throw new Exception("Data inválida");
            }

        }

        private void preencherAplConsumidor()
        {
            aplConsumidor.pessoa.Nome = this.TxtNome.Text;
            aplConsumidor.pessoa.Sobrenome = this.TxtSobrenome.Text;
            aplConsumidor.pessoa.DataNascimento = DateTime.Parse(this.TxtDataNascimento.Text);
            aplConsumidor.pessoa.Email = this.TxtEmail.Text;

            aplConsumidor.consumidor.Login = this.TxtLogin.Text;
            aplConsumidor.consumidor.Senha = this.TxtSenha.Text;
        }

        protected void BtnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                validarFormulario();

                preencherAplConsumidor();

                aplConsumidor.CadastrarConsumidor();
                
                Response.Redirect("../login/Login.aspx");

                MasterPage.SetMensagemMain("Sucesso!", eTipoMensagem.Sucesso);
            }
            catch (Exception msg)
            {
                MasterPage.SetMensagemMain(msg.Message, eTipoMensagem.Erro);
            }
        }

        public IQueryable<Cidade> GetCidades()
        {
            return repositorioCidade.ObterTodosQuery();
        }

        protected void LkbEsqueceuSenha_Click(object sender, EventArgs e)
        {
            throw new Exception("Não implementado...");
        }
    }
}