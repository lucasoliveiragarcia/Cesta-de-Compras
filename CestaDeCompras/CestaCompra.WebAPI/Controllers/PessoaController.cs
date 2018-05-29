using CestaCompra.Data.Models;
using CestaCompra.Service.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CestaDeCompra.WebAPI.Controllers
{
    public class PessoaController : ApiController
    {
        private IPessoaService pessoaService = new PessoaService();

        public IEnumerable<pessoa> Get()
        {
            return pessoaService.GetPessoas();
        }

        public IHttpActionResult Get(int id)
        {
            var pessoa = pessoaService.GetPessoa(id);
            if (pessoa == null)
                return NotFound();

            return Ok(pessoa);
        }
    }
}
