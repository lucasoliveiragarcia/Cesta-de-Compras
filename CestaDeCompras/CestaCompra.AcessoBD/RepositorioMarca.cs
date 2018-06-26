using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioMarca : Repositorio<Marca>, IRepositorioMarca
    {
        public RepositorioMarca(IUnitOfWork unitOfWork) : base(unitOfWork) { }
    }

    public interface IRepositorioMarca : IRepositorio<Marca>
    {

    }
}