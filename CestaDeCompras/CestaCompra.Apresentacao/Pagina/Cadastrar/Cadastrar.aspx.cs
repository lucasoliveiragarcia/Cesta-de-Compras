using System;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.Security;
using BCrypt.Net;
using System.IO;

namespace CestaCompra.Apresentacao
{
    public partial class _Cadastrar  : System.Web.UI.Page
    {
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

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Page_Init(object sender, EventArgs e)
        {
            

        }
        
        protected void Page_PreRender(object sender, EventArgs e)
        {

        }

        
        protected void BtnCadastrar_Click(object sender, EventArgs e)
        {
            //this.AutenticaEArmazenaDadosIniciais();
            string senhadigitada = this.TxtSenha.Text;
            string senhaEncriptada = BCrypt.Net.BCrypt.HashString(this.TxtSenha.Text);
            if(string.IsNullOrEmpty(senhadigitada))
            {
                MasterPage.SetMensagemMain("Informe uma senha!",eTipoMensagem.Erro);
            }

            if (BCrypt.Net.BCrypt.Verify(senhadigitada,senhaEncriptada))
            {
                MasterPage.SetMensagemMain("Sucesso!", eTipoMensagem.Sucesso);
                FormsAuthentication.RedirectFromLoginPage(TxtLogin.Text,false);
            }
            else
            {
                MasterPage.SetMensagemMain("Senha incorreta!", eTipoMensagem.Erro);
            }
        }

        protected void LkbEsqueceuSenha_Click(object sender, EventArgs e)
        {
            try
            {
                //Usuario objUsuario = new Usuario();
                //objUsuario.EnviarEmailEsqueceuSenha(
                //    Convert.ToString(
                //        Request.Form["TxtUsuario"]
                //    )
                //);
            }
            catch (Exception ex)
            {
                Label CtrlLblMensagem = (Label)Form.FindControl("LblMensagem");
                if (CtrlLblMensagem != null)
                {
                    CtrlLblMensagem.Text = ex.Message;
                }
                else
                {
                    throw new Exception(ex.Message);
                }
            }
        }


    }
}