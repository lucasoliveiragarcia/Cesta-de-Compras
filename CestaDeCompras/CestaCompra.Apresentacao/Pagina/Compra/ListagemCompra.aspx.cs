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
    public partial class ListagemCompra : Page
    {
        AplListaCompra aplListaCompra = new AplListaCompra();
        
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
            ListarCompras();
        }

        private void ListarCompras()
        {
            GvwLista.DataSource = aplListaCompra.ListarListasCompra(this.Idconsumidor);
            GvwLista.DataBind();
        }

        protected void Editar_Command(object sender, CommandEventArgs e)
        {
            if(sender != null)
                Response.Redirect("../../Pagina/ListaCompra/ListaCompra.aspx?ID="+ ((Button)sender).CommandArgument.ToString());
        }

        protected void BtnCriarNovaLista_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../Pagina/ListaCompra/AdicionarListaCompra.aspx");
        }

        protected void Paginacao_Grid(object sender, GridViewPageEventArgs e)
        {
            try
            {
                this.GvwLista.PageIndex = e.NewPageIndex;
                this.GvwLista.DataBind();
            }
            catch (Exception erro )
            {
                MasterPage.SetMensagemMain(erro.Message, ETipoMensagem.Erro);
            }
        }
        protected void GvwLista_Sorting(object sender, GridViewSortEventArgs e)
        {
            try
            {
                ListarCompras();
            }
            catch (Exception erro)
            {
                MasterPage.SetMensagemMain(erro.Message, ETipoMensagem.Erro);
            }
        }
    }
}