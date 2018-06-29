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
using CestaCompra.Data.Configuracao;
using CestaCompra.Data;

namespace CestaCompra.Apresentacao
{
    public partial class SiteMaster : MasterPage
    {
        #region [ Propriedades ]
        public int Id
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
        public Consumidor ConsumidorLogado
        {
            get
            {
                Consumidor cosumidor = new Consumidor();
                try
                {
                    cosumidor = RepositorioConsumidor.ObterPorId(Convert.ToInt32(HttpContext.Current.User.Identity.Name));
                }
                catch
                {
                    Response.Redirect("../../Public/Login/Login.aspx");
                }
                return cosumidor;
            }
        }

        
        #endregion
        #region [ Repositorios ]
        private IRepositorioConsumidor repositorioConsumidor;
        public IRepositorioConsumidor RepositorioConsumidor
        {
            get => repositorioConsumidor;
            set => repositorioConsumidor = value;
        }

        public ContextCestaBD ContextCestaBD
        {
            get
            {
                ContextCestaBD contextCestaBD;

                if (Session["ContextCestaBD"] != null)
                    return (ContextCestaBD)Session["ContextCestaBD"];
                else
                {
                    contextCestaBD = new ContextCestaBD();
                    Session["ContextCestaDB"] = contextCestaBD;
                    return contextCestaBD;
                }
            }
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                this.IniciarRepositorios();

                if (HttpContext.Current.User != null)
                {
                    if (!string.IsNullOrEmpty(HttpContext.Current.User.Identity.Name))
                    {
                        if (Session["nomeConsumidor"] == null)
                        {
                            Session["nomeConsumidor"] = ConsumidorLogado.Pessoa.Nome;
                        }

                        Label lblUser = new Label
                        {
                            Text = Session["nomeConsumidor"].ToString()
                        };

                        DivUserInfo.Controls.Add(lblUser);

                        LinkButton LkbLogout = new LinkButton
                        {
                            Text = " Logout"
                        };

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
                this.Logout(null, null);
            }
        }
        
        private void IniciarRepositorios()
        {
            this.RepositorioConsumidor = NinjectWebCommon.Kernel.Get<IRepositorioConsumidor>();
        }

        public ContextCestaBD GetContex()
        {
            return this.ContextCestaBD;
        }

        private void Logout(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session["idconsumidor"] = null;
            Session.Abandon();

            HttpCookie cookie1 = new HttpCookie(FormsAuthentication.FormsCookieName, "")
            {
                Expires = DateTime.Now.AddYears(-1)
            };
            Response.Cookies.Add(cookie1);

            HttpCookie cookie2 = new HttpCookie("ASP.NET_SessionId", "")
            {
                Expires = DateTime.Now.AddYears(-1)
            };
            Response.Cookies.Add(cookie2);

            FormsAuthentication.RedirectToLoginPage();
        }

        public void SetMensagemMain(string text, ETipoMensagem tipoMensagem)
        {
            this.LblMensagemMain.Text = text;

            if (tipoMensagem == ETipoMensagem.Sucesso)
                this.LblMensagemMain.ForeColor = Color.Blue;
            else
                this.LblMensagemMain.ForeColor = Color.Red;
        }
    }

    public enum ETipoMensagem
    {
        Sucesso = 1,
        Erro = 2
    }

}

