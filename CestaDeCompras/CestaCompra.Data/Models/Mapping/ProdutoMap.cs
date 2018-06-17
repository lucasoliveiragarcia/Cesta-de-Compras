using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class ProdutoMap : EntityTypeConfiguration<Produto>
    {
        public ProdutoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdProduto);

            //Propriedades & Column Mappings
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("nome");

            this.Property(t => t.Valido)
                .IsRequired()
                .HasColumnName("valido");

            this.Property(t => t.IdProduto)
                .IsRequired()
                .HasColumnName("idproduto");

            this.Property(t => t.Unidade)
                .IsRequired()
                .HasColumnName("unidade");

            //Table & Column Mappings
            this.ToTable("produto");

            //Relacionamentos
            HasRequired(d => d.Marca)
            .WithMany(d => d.Produtos)
            .Map(m => m.MapKey("idmarca"));

            //Relacionamentos
            HasRequired(d => d.Medida)
            .WithMany(d => d.Produtos)
            .Map(m => m.MapKey("idmedida"));
        }
    }
}