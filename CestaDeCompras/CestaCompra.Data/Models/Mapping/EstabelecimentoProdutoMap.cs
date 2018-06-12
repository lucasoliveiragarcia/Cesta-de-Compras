using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class EstabelecimentoProdutoMap : EntityTypeConfiguration<EstabelecimentoProduto>
    {
        public EstabelecimentoProdutoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdEstabelecimentoProduto);

            //Propriedades
            this.Property(t => t.Preco)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.IdEstabelecimentoProduto)
                .IsRequired();

            this.Property(t => t.IdEstabelecimento)
                .IsRequired();

            this.Property(t => t.IdProduto)
                .IsRequired();

            //Table & Column Mappings
            this.ToTable("produtosupermercado");
            this.Property(t => t.IdEstabelecimentoProduto).HasColumnName("idestabelecimentoproduto");
            this.Property(t => t.IdEstabelecimento).HasColumnName("idestabelecimento");
            this.Property(t => t.IdProduto).HasColumnName("idproduto");
            this.Property(t => t.Preco).HasColumnName("preco");

            //Relacionamentos
            //HasRequired(d => d.Estabelecimento)
            //.WithMany(d => d.EstabelecimentoProduto)
            //.Map(m => m.MapKey("IdEstabelecimento"));

            // HasRequired(d => d.Produto)
            // .WithMany(d => d.EstabelecimentoProduto)
            // .Map(m => m.MapKey("IdEstabelecimento"));

        }
    }
}