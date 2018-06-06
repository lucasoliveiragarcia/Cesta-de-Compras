using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using CestaCompra.Data.Models;
using System.Data.Entity.ModelConfiguration.Conventions;
// add a reference to System.ComponentModel.DataAnnotations DLL 
using System.ComponentModel.DataAnnotations;
using CestaCompra.Data.Models.Mapping;

namespace CestaCompra.Data
{
    public class ContextCestaBD: DbContext
    {
        //static ContextCestaBD()
        //{
        //    Database.SetInitializer<ContextCestaBD>(null);
        //}

        //public ContextCestaBD()
        //    : base("Data Source=localhost;Initial Catalog=BancoCestaCompraNew;Persist Security Info=True;User ID=postgres;Password=root;")

        //    //: base("name=ContextCestaBD connectionString=Server = localhost; Database=BancoCestaCompraNew;User Id = postgres; Password=root providerName=Npgsql")
        //{
        //}

        //DbSet, OnModelCreating, etc..
        public ContextCestaBD() : base("ContextCestaBD")
        {

        }
        public DbSet<Pessoa> Pessoa { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            // Configure Code First to ignore PluralizingTableName convention 
            // If you keep this convention then the generated tables will have pluralized names. 
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            
            //modelBuilder.HasDefaultSchema("Public");
            
            modelBuilder.Configurations.Add(new PessoaMap());
            //modelBuilder.Configurations.Add(new TipoMedidaMap());

            //Adiciona Chave primarias automaticamente
            //modelBuilder.Properties().Where(p => p.Name == "id" + p.ReflectedType.Name.ToLower()).Configure(p => p.IsKey());
            modelBuilder.Properties<string>().Configure(p => p.HasColumnType("varchar"));
            //modelBuilder.Properties<DateTime>().Configure(p => p.HasColumnType("timestamp"));
        }
    }
}