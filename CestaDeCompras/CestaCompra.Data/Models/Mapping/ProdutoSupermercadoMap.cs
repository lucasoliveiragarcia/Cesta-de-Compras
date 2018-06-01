using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class ProdutoSupermercadoMap : EntityTypeConfiguration<ProdutoSupermercado>
    {
        public ProdutoSupermercadoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdProdutoSupermercado);

            //Propriedades
            this.Property(t => t.Preco)
                .IsRequired()
                .HasMaxLength(10);

            //Table & Column Mappings
            this.ToTable("produtosupermercado");
            this.Property(t => t.IdProdutoSupermercado).HasColumnName("idprodutosupermercado");
            this.Property(t => t.IdEstabelecimento).HasColumnName("idestabelecimento");
            this.Property(t => t.IdProduto).HasColumnName("idproduto");
            this.Property(t => t.Preco).HasColumnName("preco");

        }
    }
}