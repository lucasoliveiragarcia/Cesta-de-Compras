using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class ProdutoSupermercadoMap : EntityTypeConfiguration<produtosupermercado>
    {
        public ProdutoSupermercadoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.idprodutosupermercado);

            //Propriedades
            this.Property(t => t.preco)
                .IsRequired()
                .HasMaxLength(10);

            //Table & Column Mappings
            this.ToTable("produtosupermercado");
            this.Property(t => t.idprodutosupermercado).HasColumnName("idprodutosupermercado");
            this.Property(t => t.idestabelecimento).HasColumnName("idestabelecimento");
            this.Property(t => t.idproduto).HasColumnName("idproduto");
            this.Property(t => t.preco).HasColumnName("preco");

        }
    }
}