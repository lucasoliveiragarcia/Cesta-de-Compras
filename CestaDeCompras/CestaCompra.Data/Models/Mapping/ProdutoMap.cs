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

            //Propriedades
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Valido)
                .IsRequired();

            this.Property(t => t.IdProduto)
                .IsRequired();

            this.Property(t => t.IdMarca)
                .IsRequired();

            this.Property(t => t.IdTipoMedida)
                .IsRequired();

            this.Property(t => t.Unidade)
                .IsRequired();

            //Table & Column Mappings
            this.ToTable("produto");
            this.Property(t => t.IdProduto).HasColumnName("idproduto");
            this.Property(t => t.IdMarca).HasColumnName("idmarca");
            this.Property(t => t.IdTipoMedida).HasColumnName("idtipomedida");
            this.Property(t => t.Unidade).HasColumnName("unidade");
            this.Property(t => t.Nome).HasColumnName("nome");
            this.Property(t => t.Valido).HasColumnName("valido");

            //Relacionamentos
            HasRequired(d => d.Marca)
            .WithMany(d => d.Produtos)
            .HasForeignKey(d => d.IdMarca);

             //Relacionamentos
            HasRequired(d => d.Medida)
            .WithMany(d => d.Produtos)
            .HasForeignKey(d => d.IdTipoMedida);

        }
    }
}