using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioMedida : Repositorio<Medida>, IRepositorioMedida
    {
        public RepositorioMedida(IUnitOfWork unitOfWork) : base(unitOfWork) { }
    }

    public interface IRepositorioMedida : IRepositorio<Medida>
    {

    }
}