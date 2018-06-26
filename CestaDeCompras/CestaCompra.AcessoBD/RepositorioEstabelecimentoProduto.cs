using System;
using System.Collections.Generic;
using System.Linq;
using CestaCompra.Data;
using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioEstabelecimentoProduto : Repositorio<EstabelecimentoProduto>, IRepositorioEstabelecimentoProduto
    {
        public RepositorioEstabelecimentoProduto(IUnitOfWork unitOfWork) : base(unitOfWork) { }
    }

    public interface IRepositorioEstabelecimentoProduto : IRepositorio<EstabelecimentoProduto>
    {
        
    }
}