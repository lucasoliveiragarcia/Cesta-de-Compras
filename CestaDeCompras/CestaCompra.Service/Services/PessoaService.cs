using CestaCompra.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace CestaCompra.Service.Services
{
    public class PessoaService : IPessoaService
    {
        private BancoCestaCompras db = new BancoCestaCompras();

        public List<CestaCompra.Data.Models.pessoa> GetPessoas()
        {
            return db.pessoa.ToList();
        }

        public CestaCompra.Data.Models.pessoa GetPessoa(int id)
        {
            return db.pessoa.Single();
        }
    }
}