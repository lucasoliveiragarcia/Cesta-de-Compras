using CestaCompra.AcessoBD;
using CestaCompra.Data;
using CestaCompra.Data.Configuracao;
using Ninject.Modules;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CestaCompra.Apresentacao.App_Start
{
    public class ContextCestaDBNinjectModule : NinjectModule
    {
        public override void Load()
        {
            this.Bind<IUnitOfWork>().To<ContextCestaBD>();
            this.Bind<IRepositorioConsumidor>().To <RepositorioConsumidor>();
            this.Bind<IRepositorioCidade>().To<RepositorioCidade>();
        }
    }
}