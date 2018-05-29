using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CestaCompra.Dominio.Models
{
    class CestaComprasContexto : DbContext
    {
        public CestaComprasContexto():base("BancoCestaCompras"){}

        public DbSet<Pais> Paises { get; set; }

    }
}
