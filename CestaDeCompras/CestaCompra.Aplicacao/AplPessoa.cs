using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CestaCompra.AcessoBD;
using CestaCompra.Data;
using CestaCompra.Data.Models;

namespace CestaCompra.Aplicacao
{
    public class AplPessoa
    {
        private IRepositorioPessoa pessoaRepositorio;
        private readonly ContextCestaBD contextCestaBD = new ContextCestaBD();

        public AplPessoa()
        {
            this.pessoaRepositorio = new RepositorioPessoa(contextCestaBD);
        }
    }
}
