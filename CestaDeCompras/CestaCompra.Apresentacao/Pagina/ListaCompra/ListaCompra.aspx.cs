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
        AplListaCompra aplListaCompra = new AplListaCompra();

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
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            ControleGenerico.Page_Load(Page);

            if (!IsPostBack && this.Id > 0)
            {
                aplListaCompra.SetListaCompra(this.Id);
                this.PreencherCampos();
            }

            ListarItemsAdicionados();
        }

        private void PreencherCampos()
        {
            this.TxtNomeLista.Text = this.aplListaCompra.listaCompra.Nome;
        }

        private void ListarItemsAdicionados()
        {
            GvwLista.DataSource = aplListaCompra.ListarItemsListaCompra(this.MasterPage.Id);
            GvwLista.DataBind();
        }

        protected void Editar_Command(object sender, CommandEventArgs e)
        {
            throw new NotImplementedException();
        }

        protected void BtnCriarNovaLista_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        protected void Paginacao_Grid(object sender, GridViewPageEventArgs e)
        {
            try
            {
                this.GvwLista.PageIndex = e.NewPageIndex;
                this.GvwLista.DataBind();
            }
            catch (Exception erro)
            {
                MasterPage.SetMensagemMain(erro.Message, ETipoMensagem.Erro);
            }
        }
        protected void GvwLista_Sorting(object sender, GridViewSortEventArgs e)
        {
            try
            {
                ListarItemsAdicionados();
            }
            catch (Exception erro)
            {
                MasterPage.SetMensagemMain(erro.Message, ETipoMensagem.Erro);
            }
        }

    }
}