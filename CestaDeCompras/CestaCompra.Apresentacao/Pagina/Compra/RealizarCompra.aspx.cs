using CestaCompra.Aplicacao;
using CestaCompra.Data.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CestaCompra.Apresentacao
{
    public partial class RealizarCompra : Page
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

            if (!IsPostBack)
            {
                if(this.Id > 0)
                {
                    aplListaCompra.SetListaCompra(this.Id);
                    this.PreencherCampos();

                    ListarItemsAdicionados();
                }
                else
                {
                    Response.Redirect("../../Pagina/ListaCompra/ListagemListaCompra.aspx");
                }   
            }
        }

        private void PreencherCampos()
        {
            this.TxtNomeLista.Text = this.aplListaCompra.listaCompra.Nome;
        }

        protected void BtnPesquisarProduto_Click(object sender, EventArgs e)
        {
            DataSet dsProdutosAdd = ControleGenerico.ToDataSet(aplListaCompra.GetProdutos(this.TxtNomePesquisaProduto.Text.Trim()));

            GvwAddProduto.DataSource = dsProdutosAdd;
            GvwAddProduto.DataBind();
        }
        
        private void ListarItemsAdicionados()
        {
            GvwLista.DataSource = aplListaCompra.ListarItemsListaCompra(this.Id);
            GvwLista.DataBind();
        }
        
        protected void LkbAdicionarProduto_Click(object sender, EventArgs e)
        {
            this.mvwPrincipal.SetActiveView(this.viewAdicionarProduto);
        }

        protected void LkbExcluirListaCompra_Click(object sender, EventArgs e)
        {
            try
            {
                aplListaCompra.ExcluirListaCompra(this.Id);
                Response.Redirect("../../Pagina/ListaCompra/ListagemListaCompra.aspx");
            }
            catch (Exception erro)
            {
                MasterPage.SetMensagemMain(erro.Message, ETipoMensagem.Erro);
            }
        }

        protected void LkbSalvarListaCompra_Click(object sender, EventArgs e)
        {
            try
            {
                GridViewRowCollection rows = GvwLista.Rows;

                foreach (GridViewRow row in rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        Label LblIdItemListaCompra = (Label)row.FindControl("iditemlistacompra");
                        TextBox TextQuantidade = (TextBox)row.FindControl("TxtQuantidade");

                        aplListaCompra.AtualizarQuantidadeItemListaCompra(
                           this.Id,
                           Convert.ToInt32(LblIdItemListaCompra.Text),
                           Convert.ToInt32(TextQuantidade.Text)
                        );
                    }
                }
                MasterPage.SetMensagemMain("Salvo com sucesso!", ETipoMensagem.Sucesso);
            }
            catch (Exception erro)
            {
                MasterPage.SetMensagemMain(erro.Message, ETipoMensagem.Erro);
            }
        }
        
        protected void AdicionarProduto_Command(object sender, CommandEventArgs e)
        {
            try
            {
                int idProduto = Convert.ToInt32(((Button)sender).CommandArgument);

                aplListaCompra.AdicionarProdutoLista(this.Id, idProduto);
                
                this.mvwPrincipal.SetActiveView(viewPrincipal);

                this.ListarItemsAdicionados();

                MasterPage.SetMensagemMain("Item Adicionado com sucesso!", ETipoMensagem.Sucesso);
            }
            catch(Exception erro)
            {
                MasterPage.SetMensagemMain(erro.Message, ETipoMensagem.Erro);
            }   
        }

        protected void RemoverProduto_Command(object sender, CommandEventArgs e)
        {
            try
            {
                int iditemlistacompra = Convert.ToInt32(((Button)sender).CommandArgument);

                aplListaCompra.RemoverItemListaCompra(this.Id, iditemlistacompra);
                
                this.ListarItemsAdicionados();

                MasterPage.SetMensagemMain("Item Removido com sucesso!", ETipoMensagem.Sucesso);
            }
            catch (Exception erro)
            {
                MasterPage.SetMensagemMain(erro.Message, ETipoMensagem.Erro);
            }
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