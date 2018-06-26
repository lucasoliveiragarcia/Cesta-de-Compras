using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioItemCompra : Repositorio<ItemCompra>, IRepositorioItemCompra
    {
        public RepositorioItemCompra(IUnitOfWork unitOfWork) : base(unitOfWork) { }
    }

    public interface IRepositorioItemCompra : IRepositorio<ItemCompra>
    {

    }
}