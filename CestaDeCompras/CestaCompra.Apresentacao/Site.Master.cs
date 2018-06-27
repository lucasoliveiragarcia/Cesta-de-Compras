using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using CestaCompra.AcessoBD;
using CestaCompra.Apresentacao.App_Start;
using CestaCompra.Data.Models;
using Ninject;

namespace CestaCompra.Apresentacao
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (HttpContext.Current.User != null)
                {
                    if (!string.IsNullOrEmpty(HttpContext.Current.User.Identity.Name))
                    {
                        if (Session["nomeConsumidor"] == null)
                        {
                            IRepositorioConsumidor repositorioConsumidor = NinjectWebCommon.Kernel.Get<IRepositorioConsumidor>();
                            Consumidor consumidor = repositorioConsumidor.ObterPorId(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
                            Session["nomeConsumidor"] = consumidor.Pessoa.Nome;
                        }

                        Label lblUser = new Label();
                        lblUser.Text = Session["nomeConsumidor"].ToString();
                        DivUserInfo.Controls.Add(lblUser);

                        LinkButton LkbLogout = new LinkButton();
                        LkbLogout.Text = " Logout";
                        LkbLogout.Click += Logout;

                        DivUserInfo.Controls.Add(LkbLogout);

                    }
                }
                else
                {
                    Session["nomeConsumidor"] = null;
                    FormsAuthentication.RedirectToLoginPage();
                }
            }
            catch
            {
                Session["nomeConsumidor"] = null;
                this.Logout(null,null);
            }
        }

        private void Logout(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session["idconsumidor"] = null;
            Session.Abandon();

            //Apagar os Cookies de Autenticação
            HttpCookie cookie1 = new HttpCookie(FormsAuthentication.FormsCookieName, "");
            cookie1.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(cookie1);

            //Apagar Session Cook ie
            HttpCookie cookie2 = new HttpCookie("ASP.NET_SessionId", "");
            cookie2.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(cookie2);

            FormsAuthentication.RedirectToLoginPage();
        }

        public void SetMensagemMain(string text, eTipoMensagem tipoMensagem)
        {
            this.LblMensagemMain.Text = text;

            if (tipoMensagem == eTipoMensagem.Sucesso)
                this.LblMensagemMain.ForeColor = Color.Blue;
            else
                this.LblMensagemMain.ForeColor = Color.Red;
        }
    }

    public enum eTipoMensagem
    {
        Sucesso = 1,
        Erro = 2
    }

}

