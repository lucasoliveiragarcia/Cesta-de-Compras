using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;
using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace CestaCompra.AcessoBD
{
    public class RepositorioItemListaCompra : Repositorio<ItemListaCompra>, IRepositorioItemListaCompra
    {
        public RepositorioItemListaCompra(IUnitOfWork unitOfWork) : base(unitOfWork) { }

        public DataSet GetItemsListaCompra(int IdListaCompra)
        {
            DataSet dataSet = new DataSet();

            DataTable dt = new DataTable();
            dt.Columns.Add("IdItemListaCompra", typeof(int));
            dt.Columns.Add("nomeProduto", typeof(string));
            dt.Columns.Add("quantidade", typeof(int));
            dt.Columns.Add("idproduto", typeof(int));
            dt.Columns.Add("idlistacompra", typeof(int));

            List<ItemListaCompra> lstItemListaCompra = Context.Where(item => item.ListaCompra.IdListaCompra == IdListaCompra).ToList();

            foreach (ItemListaCompra itemListacompra in lstItemListaCompra)
            {
                DataRow dr = dt.NewRow();
                dr["IdItemListaCompra"] = itemListacompra.IdItemListaCompra;
                dr["nomeProduto"] = itemListacompra.Produto.Nome;
                dr["quantidade"] = itemListacompra.Quantidade;
                dr["idproduto"] = itemListacompra.Produto.IdProduto;
                dr["idlistacompra"] = itemListacompra.ListaCompra.IdListaCompra;

                dt.Rows.Add(dr);
            }

            dataSet.Tables.Add(dt);

            return dataSet;
        }
    }

    public interface IRepositorioItemListaCompra : IRepositorio<ItemListaCompra>
    {
        DataSet GetItemsListaCompra(int IdListaCompra);
    }
}