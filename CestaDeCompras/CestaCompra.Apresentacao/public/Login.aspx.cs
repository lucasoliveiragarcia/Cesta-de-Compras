using System;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.Security;
using BCrypt.Net;
using System.IO;
using CestaCompra.AcessoBD;
using CestaCompra.Data;
using Microsoft.AspNet.Identity.Owin;
using CestaCompra.Data.Configuracao;
using CestaCompra.Apresentacao.App_Start;
using Ninject;
using CestaCompra.Data.Models;
using System.Collections.Generic;

namespace CestaCompra.Apresentacao
{
    public partial class _Login  : System.Web.UI.Page
    {
        private ContextCestaBD cestaCompraDB = new ContextCestaBD();
        private IRepositorioConsumidor repositorioConsumidor;

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
            this.repositorioConsumidor = NinjectWebCommon.Kernel.Get<IRepositorioConsumidor>();
        }

        
        protected void BtnEntrar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.TxtSenha.Text.Trim()))
            {
                MasterPage.SetMensagemMain("Informe uma senha!", eTipoMensagem.Erro);
            }

            Consumidor objConsumidor = repositorioConsumidor.ObterPorLogin(this.TxtUsuario.Text.Trim());
            
            if(objConsumidor == null)
            {
                MasterPage.SetMensagemMain("Usuário não encontrado!", eTipoMensagem.Erro);
            }
            else if (BCrypt.Net.BCrypt.Verify(this.TxtSenha.Text, objConsumidor.Senha))
            {
                MasterPage.SetMensagemMain("Sucesso!", eTipoMensagem.Sucesso);

                FormsAuthentication.SetAuthCookie(objConsumidor.IdConsumidor.ToString(), false);

                Session["nomeConsumidor"] = objConsumidor.Pessoa.Nome;

                Response.Redirect(FormsAuthentication.DefaultUrl);
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