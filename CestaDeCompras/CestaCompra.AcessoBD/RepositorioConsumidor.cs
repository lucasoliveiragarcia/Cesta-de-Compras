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
        
        public Consumidor ObterPorLogin(string login)
        {
            return Context.Where(consumidor => consumidor.Login == login).SingleOrDefault();
        }
        public Consumidor ObterPorLoginSenha(string login, string senha)
        {
            return Context.Where(consumidor => consumidor.Login == login && consumidor.Senha == senha).SingleOrDefault();
        }
    }

    public interface IRepositorioConsumidor : IRepositorio<Consumidor>
    {
        Consumidor ObterPorLogin(string login);
        Consumidor ObterPorLoginSenha(string login, string senha);
    }
}