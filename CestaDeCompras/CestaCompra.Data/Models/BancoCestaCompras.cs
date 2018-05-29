using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using CestaCompra.Data.Models;

using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
// add a reference to System.ComponentModel.DataAnnotations DLL 
using System.ComponentModel.DataAnnotations;
using CestaCompra.Data.Models.Mapping;

namespace CestaCompra.Data
{
    public class BancoCestaCompras: DbContext
    {
        public BancoCestaCompras() : base("BancoCestaCompras")
        {

        }
        public DbSet<pessoa> pessoa { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            // Configure Code First to ignore PluralizingTableName convention 
            // If you keep this convention then the generated tables will have pluralized names. 
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            
            //modelBuilder.HasDefaultSchema("Public");
            
            modelBuilder.Configurations.Add(new PessoaMap());
            modelBuilder.Configurations.Add(new TipoMedidaMap());

            //Adiciona Chave primarias automaticamente
            modelBuilder.Properties().Where(p => p.Name == "id" + p.ReflectedType.Name).Configure(p => p.IsKey());
            modelBuilder.Properties<string>().Configure(p => p.HasColumnType("varchar"));
            modelBuilder.Properties<DateTime>().Configure(p => p.HasColumnType("timestamp"));
        }
    }
}