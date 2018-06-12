using System;
using System.Collections.Generic;
using System.Linq;
using CestaCompra.Data;
using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class RepositorioConsumidor : Repositorio<Consumidor>, IRepositorioConsumidor
    {
        public RepositorioConsumidor(IUnitOfWork unitOfWork) : base(unitOfWork) { }
        
        public IQueryable<Consumidor> ObterPorLogin(string login)
        {
            return Context.Where(consumidor => consumidor.Login == login);
        }
    }

    public interface IRepositorioConsumidor : IRepositorio<Consumidor>
    {
        IQueryable<Consumidor> ObterPorLogin(string login);
    }
}
