using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioEstado : Repositorio<Estado>, IRepositorioEstado
    {
        public RepositorioEstado(IUnitOfWork unitOfWork) : base(unitOfWork) { }
    }

    public interface IRepositorioEstado : IRepositorio<Estado>
    {

    }
}