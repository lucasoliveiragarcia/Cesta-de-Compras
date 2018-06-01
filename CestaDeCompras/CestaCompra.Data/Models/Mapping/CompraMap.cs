using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class CompraMap : EntityTypeConfiguration<compra>
    {
        public CompraMap()
        { 
            //Chave Primaria
            this.HasKey(t => t.idcompra);
                

            //Propriedades
            this.Property(t => t.quantidade)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.preco)
                .IsRequired();
                

            this.Property(t => t.valido)
                .IsRequired();
                

            //Table & Column Mappings
            this.ToTable("compra");
            this.Property(t => t.idcompra).HasColumnName("idcompra");
            this.Property(t => t.idcomprarealizada).HasColumnName("idcomprarealizada");
            this.Property(t => t.idproduto).HasColumnName("idproduto");
            this.Property(t => t.idestabelecimento).HasColumnName("idestabelecimento");
            this.Property(t => t.quantidade).HasColumnName("quantidade");
            this.Property(t => t.preco).HasColumnName("preco");
            this.Property(t => t.valido).HasColumnName("valido");
        }
    }
}