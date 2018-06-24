using System;
using System.Collections.Generic;
using System.Linq;
using CestaCompra.Data;
using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioPessoa : Repositorio<Pessoa>, IRepositorioPessoa
    {
        public RepositorioPessoa(IUnitOfWork unitOfWork) : base(unitOfWork) { }
    }

    public interface IRepositorioPessoa : IRepositorio<Pessoa>
    {

    }
}