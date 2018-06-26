using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioListaCompra : Repositorio<ListaCompra>, IRepositorioListaCompra
    {
        public RepositorioListaCompra(IUnitOfWork unitOfWork) : base(unitOfWork) { }
    }

    public interface IRepositorioListaCompra : IRepositorio<ListaCompra>
    {

    }
}