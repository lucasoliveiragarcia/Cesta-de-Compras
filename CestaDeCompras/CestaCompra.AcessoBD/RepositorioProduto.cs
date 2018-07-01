using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;
using System.Collections.Generic;
using System.Linq;

namespace CestaCompra.AcessoBD
{
    public class RepositorioProduto : Repositorio<Produto>, IRepositorioProduto
    {
        public RepositorioProduto(IUnitOfWork unitOfWork) : base(unitOfWork) { }

        public List<Produto> PesquisarProduto(string nomeProduto)
        {
            return  Context.Where(produto => produto.Nome.Contains(nomeProduto)).ToList();
        }
        
    }

    public interface IRepositorioProduto : IRepositorio<Produto>
    {
        List<Produto> PesquisarProduto(string nomeProduto);
    }
}