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
                .HasColumnName("Nome");

            this.Property(t => t.Valido)
                .IsRequired()
                .HasColumnName("Valido");

            this.Property(t => t.IdProduto)
                .IsRequired()
                .HasColumnName("IdProduto");

            this.Property(t => t.IdTipoMedida)
                .IsRequired()
                .HasColumnName("IdTipoMedida");

            this.Property(t => t.Unidade)
                .IsRequired()
                .HasColumnName("Unidade");

            //Table & Column Mappings
            this.ToTable("Produto");

            //Relacionamentos
            HasRequired(d => d.Marca)
            .WithMany(d => d.Produtos)
            .Map(m => m.MapKey("IdMarca"));

            //Relacionamentos
            HasRequired(d => d.Medida)
            .WithMany(d => d.Produtos)
            .Map(m => m.MapKey("IdMedida"));

        }
    }
}