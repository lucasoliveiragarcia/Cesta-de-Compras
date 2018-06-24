using System;
using System.Collections.Generic;
using System.Linq;
using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioCidade : Repositorio<Cidade>, IRepositorioCidade
    {
        public RepositorioCidade(IUnitOfWork unitOfWork) : base(unitOfWork) { }
        
        public Cidade ObterPorNome(string nome)
        {
            return Context.Where(Cidade => Cidade.Nome == nome).SingleOrDefault();
        }
    }

    public interface IRepositorioCidade : IRepositorio<Cidade>
    {
        Cidade ObterPorNome(string nome);
    }
}