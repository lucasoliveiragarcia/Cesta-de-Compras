using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class CompraMap : EntityTypeConfiguration<Compra>
    {
        public CompraMap()
        { 
            //Chave Primaria
            this.HasKey(t => t.IdCompra);
                

            //Propriedades
            this.Property(t => t.Quantidade)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Preco)
                .IsRequired();
                

            this.Property(t => t.Valido)
                .IsRequired();
                

            //Table & Column Mappings
            this.ToTable("compra");
            this.Property(t => t.IdCompra).HasColumnName("idcompra");
            this.Property(t => t.IdComprarealizada).HasColumnName("idcomprarealizada");
            this.Property(t => t.IdProduto).HasColumnName("idproduto");
            this.Property(t => t.IdEstabelecimento).HasColumnName("idestabelecimento");
            this.Property(t => t.Quantidade).HasColumnName("quantidade");
            this.Property(t => t.Preco).HasColumnName("preco");
            this.Property(t => t.Valido).HasColumnName("valido");

          
        }
    }
}