using System;
using System.Threading.Tasks;
using CestaCompra.Data;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(CestaCompra.Apresentacao.Startup))]

namespace CestaCompra.Apresentacao
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // Para obter mais informações sobre como configurar seu aplicativo, visite https://go.microsoft.com/fwlink/?LinkID=316888
            app.CreatePerOwinContext(ContextCestaBD.Create);
        }
    }
}
