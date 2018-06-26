using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioItemListaCompra : Repositorio<ItemListaCompra>, IRepositorioItemListaCompra
    {
        public RepositorioItemListaCompra(IUnitOfWork unitOfWork) : base(unitOfWork) { }
    }

    public interface IRepositorioItemListaCompra : IRepositorio<ItemListaCompra>
    {

    }
}