using System;
using System.Collections.Generic;
using System.Data;
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
        private readonly IRepositorioPessoa pessoaRepositorio;
        private readonly ContextCestaBD contextCestaBD = new ContextCestaBD();

        public AplPessoa()
        {
            this.pessoaRepositorio = new RepositorioPessoa(contextCestaBD);
        }

        public DataSet GetListas()
        {
            return new DataSet();
        }
    }
}
