using System;
using System.Collections.Generic;
using System.Linq;
using CestaCompra.Data;
using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioEndereco : Repositorio<Endereco>, IRepositorioEndereco
    {
        public RepositorioEndereco(IUnitOfWork unitOfWork) : base(unitOfWork) { }
        
        public Endereco ObterPorCep(string cep)
        {
            return Context.Where(Endereco => Endereco.Cep == cep).SingleOrDefault();
        }
    }

    public interface IRepositorioEndereco : IRepositorio<Endereco>
    {
        Endereco ObterPorCep(string cep);
    }
}