using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using CestaCompra.Data.Models;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.ComponentModel.DataAnnotations;
using CestaCompra.Data.Models.Mapping;
using CestaCompra.Data.Configuracao;
using System.Threading.Tasks;

namespace CestaCompra.Data
{
    public class ContextCestaBD : DbContext, IUnitOfWork
    {
        public ContextCestaBD() : base("ContextCestaBD")
        {

        }
        public DbSet<Pessoa> Pessoa { get; set; }
        public DbSet<Consumidor> Consumidor { get; set; }
        public DbSet<Cidade> Cidade { get; set; }
        public DbSet<Compra> Compra { get; set; }
        public DbSet<ItemCompra> ItemCompra { get; set; }
        public DbSet<Endereco> Endereco { get; set; }
        public DbSet<Estabelecimento> Estabelecimento { get; set; }
        public DbSet<Estado> Estado { get; set; }
        public DbSet<ItemListaCompra> ItemListaCompra { get; set; }
        public DbSet<ListaCompra> ListaCompra { get; set; }
        public DbSet<Marca> Marca { get; set; }
        public DbSet<Produto> Produto { get; set; }
        public DbSet<EstabelecimentoProduto> EstabelecimentoProduto { get; set; }
        public DbSet<Medida> Medida { get; set; }

        public static ContextCestaBD Create()
        {
            return new ContextCestaBD();
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            modelBuilder.Configurations.Add(new CidadeMap());
            modelBuilder.Configurations.Add(new CompraMap());
            modelBuilder.Configurations.Add(new ItemCompraMap());
            modelBuilder.Configurations.Add(new EnderecoMap());
            modelBuilder.Configurations.Add(new EstabelecimentoMap());
            modelBuilder.Configurations.Add(new EstadoMap());
            modelBuilder.Configurations.Add(new ItemListaCompraMap());
            modelBuilder.Configurations.Add(new ListaCompraMap());
            modelBuilder.Configurations.Add(new MarcaMap());
            modelBuilder.Configurations.Add(new PessoaMap());
            modelBuilder.Configurations.Add(new ProdutoMap());
            modelBuilder.Configurations.Add(new EstabelecimentoProdutoMap());
            modelBuilder.Configurations.Add(new MedidaMap());
            modelBuilder.Configurations.Add(new ConsumidorMap());           
            modelBuilder.Properties<string>().Configure(p => p.HasColumnType("varchar"));
            modelBuilder.Properties<DateTime>().Configure(p => p.HasColumnType("timestamp"));
        }

        public int Commit()
        {
            return SaveChanges();
        }

        public Task<int> CommitAsync()
        {
            return SaveChangesAsync();
        }

        public void Roolback()
        {
            ChangeTracker.Entries().ToList().ForEach(Entry => Entry.State = EntityState.Unchanged);
        }
    }
}