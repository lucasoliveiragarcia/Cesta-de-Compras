using CestaCompra.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CestaCompra.Service.Services
{
    public interface IPessoaService
    {
        List<pessoa> GetPessoas();
        pessoa GetPessoa(int id);
    }
}