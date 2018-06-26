using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioCompra : Repositorio<Compra>, IRepositorioCompra
    {
        public RepositorioCompra(IUnitOfWork unitOfWork) : base(unitOfWork) { }
    }

    public interface IRepositorioCompra : IRepositorio<Compra>
    {

    }
}