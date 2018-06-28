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
    public partial class Cadastrar : System.Web.UI.Page
    {
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
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            aplConsumidor = new AplConsumidor();
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            this.repositorioConsumidor = NinjectWebCommon.Kernel.Get<IRepositorioConsumidor>();
            this.repositorioCidade = NinjectWebCommon.Kernel.Get<IRepositorioCidade>();
        }
        
        private void ValidarFormulario()
        {

            if (this.TxtNome.Text.Trim() == string.Empty)
                throw new AccessViolationException("Informe o nome.");

            if (this.TxtSobrenome.Text.Trim() == string.Empty)
                throw new AccessViolationException("Informe o sobrenome.");

            if (this.TxtLogin.Text.Trim() == string.Empty)
                throw new AccessViolationException("Informe o login.");

            if (this.TxtSenha.Text.Trim() == string.Empty)
                throw new AccessViolationException("Informe a senha.");

            if (this.TxtEmail.Text.Trim() == string.Empty)
                throw new AccessViolationException("Informe o email.");
            
            try
            {
                DateTime.Parse(TxtDataNascimento.Text);
            }
            catch
            {
                throw new AccessViolationException("Data inválida");
            }

        }

        private void PreencherAplConsumidor()
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
                ValidarFormulario();

                PreencherAplConsumidor();

                aplConsumidor.CadastrarConsumidor();
                
                Response.Redirect("../login/Login.aspx");

                MasterPage.SetMensagemMain("Sucesso!", ETipoMensagem.Sucesso);
            }
            catch (Exception msg)
            {
                MasterPage.SetMensagemMain(msg.Message, ETipoMensagem.Erro);
            }
        }

        public IQueryable<Cidade> GetCidades()
        {
            return repositorioCidade.ObterTodosQuery();
        }

        protected void LkbEsqueceuSenha_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException("Não implementado...");
        }
    }
}