using CestaCompra.Aplicacao;
using CestaCompra.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CestaCompra.Apresentacao
{
    public partial class ListaCompra : Page
    {
        AplConsumidor aplConsumidor = new AplConsumidor();
        AplListaCompra aplListaCompra = new AplListaCompra();
        Consumidor consumidor = new Consumidor();

        private int Idconsumidor
        {
            get
            {
                int id = 0;
                try
                {
                    id = Convert.ToInt32(HttpContext.Current.User.Identity.Name);
                }
                catch
                {
                    Response.Redirect("../../Public/Login/Login.aspx");
                    id = 0;
                }
                return id;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //consumidor = aplConsumidor.GetConsumidorPorId(HttpContext.Current.User.Identity.Name);
            }

            GvwLista.DataSource = aplListaCompra.ListarListasCompra(this.Idconsumidor);
            GvwLista.DataBind();
        }

        protected void Editar_Command(object sender, CommandEventArgs e)
        {
            try
            {
               
            }
            catch (Exception erro)
            {
               
            }
        }

        protected void BtnCriarNovaLista_Click(object sender, EventArgs e)
        {

        }

        protected void Paginacao_Grid(object sender, GridViewPageEventArgs e)
        {
            try
            {
                //this.GvwLista.PageIndex = e.NewPageIndex;
                //this.FiltraPesquisa();
                //this.GvwLista.DataBind();
                //this.LblCount.Text = string.Format("{0} registro(s) apresentado(s)", this.GvwLista.Rows.Count);
            }
            catch (Exception erro)
            {
                //PaginaWeb.Mensagem(Page, erro.Message, TipoMensagem.Error);
                //return;
            }
        }
        protected void GvwLista_Sorting(object sender, GridViewSortEventArgs e)
        {
            try
            {
                //this.FiltraPesquisa();
            }
            catch (Exception erro)
            {
                //PaginaWeb.Mensagem(Page, erro.Message, TipoMensagem.Error);
                //return;
            }
        }

    }
}