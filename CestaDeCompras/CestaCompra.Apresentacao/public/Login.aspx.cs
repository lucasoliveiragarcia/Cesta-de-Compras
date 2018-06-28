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
using CestaCompra.Aplicacao;

namespace CestaCompra.Apresentacao
{
    public partial class Login : System.Web.UI.Page
    {
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

        protected void BtnEntrar_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(this.TxtSenha.Text.Trim()))
                {
                    MasterPage.SetMensagemMain("Informe uma senha!", eTipoMensagem.Erro);
                }

                Consumidor objConsumidor = MasterPage.RepositorioConsumidor.ObterPorLogin(this.TxtUsuario.Text.Trim());

                if (objConsumidor == null)
                {
                    const string msg = "Usuário não encontrado!";
                    throw new InvalidOperationException(msg);
                }

                aplConsumidor.VerificarAcesso(this.TxtSenha.Text, objConsumidor.Senha);

                MasterPage.SetMensagemMain("Sucesso!", eTipoMensagem.Sucesso);

                FormsAuthentication.SetAuthCookie(objConsumidor.IdConsumidor.ToString(), false);

                Session["nomeConsumidor"] = objConsumidor.Pessoa.Nome;

                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
            catch (Exception msg)
            {
                MasterPage.SetMensagemMain(msg.Message, eTipoMensagem.Erro);
            }
        }

        protected void LkbEsqueceuSenha_Click(object sender, EventArgs e)
        {
            try
            {
                MasterPage.SetMensagemMain("Não implementado", eTipoMensagem.Erro);
            }
            catch (Exception ex)
            {
                MasterPage.SetMensagemMain(ex.Message, eTipoMensagem.Erro);
            }
        }
    }
}