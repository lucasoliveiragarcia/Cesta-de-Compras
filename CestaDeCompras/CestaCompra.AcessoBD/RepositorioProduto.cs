using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioProduto : Repositorio<Produto>, IRepositorioProduto
    {
        public RepositorioProduto(IUnitOfWork unitOfWork) : base(unitOfWork) { }
    }

    public interface IRepositorioProduto : IRepositorio<Produto>
    {

    }
}