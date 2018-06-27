using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;
using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace CestaCompra.AcessoBD
{
    public class RepositorioListaCompra : Repositorio<ListaCompra>, IRepositorioListaCompra
    {
        public RepositorioListaCompra(IUnitOfWork unitOfWork) : base(unitOfWork) { }

        public DataSet GetListaCompras(int idConsumidor)
        {
            DataSet dataSet = new DataSet();

            DataTable dt = new DataTable();
            dt.Columns.Add("idlistacompra", typeof(int));
            dt.Columns.Add("nome", typeof(string));
            dt.Columns.Add("idconsumidor", typeof(int));

            List<ListaCompra> lstListaCompra = Context.Where(lista => lista.Consumidor.IdConsumidor == idConsumidor).ToList();

            foreach (ListaCompra listacompra in lstListaCompra)
            {
                DataRow dr = dt.NewRow();
                dr["idlistacompra"] = listacompra.IdListaCompra;
                dr["nome"] = listacompra.Nome;
                dr["idconsumidor"] = listacompra.Consumidor.IdConsumidor;

                dt.Rows.Add(dr);
            }

            dataSet.Tables.Add(dt);

            return dataSet;
        }
    }

    public interface IRepositorioListaCompra : IRepositorio<ListaCompra>
    {
        DataSet GetListaCompras(int idConsumidor);
    }
}