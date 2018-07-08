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
    public partial class AdicionarListaCompra : Page
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
        }
        
        protected void BtnConfirmarLista_Click(object sender, EventArgs e)
        {
            try
            {
                AplListaCompra aplListaCompra = new AplListaCompra();

                int id = aplListaCompra.CriarListaCompra(TxtNomeLista.Text, MasterPage.ConsumidorLogado.IdConsumidor);
                if (id > 0)
                    Response.Redirect("../../Pagina/ListaCompra/ListaCompra.aspx?ID=" + id);
                else
                    throw new InvalidOperationException("Ocorreu um erro ao tentar inserir o registro. Tente novamente.");
                   
            }
            catch(Exception msg)
            {
                MasterPage.SetMensagemMain(msg.Message,ETipoMensagem.Erro);
            }
        }
        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../Pagina/ListaCompra/ListagemListaCompra.aspx");
        }
    }
}