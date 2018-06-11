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
            
            modelBuilder.Configurations.Add(new CidadeMap());
            modelBuilder.Configurations.Add(new CompraMap());
            modelBuilder.Configurations.Add(new ItemCompraMap());
            modelBuilder.Configurations.Add(new EnderecoMap());
            modelBuilder.Configurations.Add(new EstabelecimentoMap());
            modelBuilder.Configurations.Add(new EstadoMap());
            modelBuilder.Configurations.Add(new ItemListaCompraMap());
            modelBuilder.Configurations.Add(new ListaCompraMap());
            modelBuilder.Configurations.Add(new MarcaMap());
            modelBuilder.Configurations.Add(new PaisMap());
            modelBuilder.Configurations.Add(new PessoaMap());
            modelBuilder.Configurations.Add(new ProdutoMap());
            modelBuilder.Configurations.Add(new EstabelecimentoProdutoMap());
            modelBuilder.Configurations.Add(new MedidaMap());
            modelBuilder.Configurations.Add(new ConsumidorMap());
            modelBuilder.Configurations.Add(new MedidaMap());


            //Adiciona Chave primarias automaticamente
            //modelBuilder.Properties().Where(p => p.Name == "id" + p.ReflectedType.Name.ToLower()).Configure(p => p.IsKey());
            modelBuilder.Properties<string>().Configure(p => p.HasColumnType("varchar"));
            //modelBuilder.Properties<DateTime>().Configure(p => p.HasColumnType("timestamp"));
        }
    }
}