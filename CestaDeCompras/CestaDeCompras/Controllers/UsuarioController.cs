using CestaDeCompras.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CestaDeCompras.Controllers
{
    public class UsuarioController : ApiController
    {
        private static List<Usuario> usuarios = new List<Usuario>();

        [HttpGet]
        public List<Usuario> Get()
        {
            return usuarios;
        }

        [HttpPost]
        public void Post(string nome)
        {
            usuarios.Add(new Usuario(nome));
        }
    }
}
