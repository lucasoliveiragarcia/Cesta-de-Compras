using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class ItemCompraMap : EntityTypeConfiguration<ItemCompra>
    {
        public ItemCompraMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdItemCompra);

            //Propriedades & Column Mappings
            this.Property(t => t.IdItemCompra)
            .IsRequired()
            .HasColumnName("iditemcompra");

            this.Property(t => t.Quantidade)
                .IsRequired()
                .HasMaxLength(10)
                .HasColumnName("quantidade");

            this.Property(t => t.Preco)
                .IsRequired()
                .HasColumnName("preco");

            this.Property(t => t.Valido)
                .IsRequired()
                .HasColumnName("valido");

            //Table
            this.ToTable("itemcompra");

            //Relacionamentos
            HasRequired(e => e.Produto)
            .WithMany(e => e.ItensCompra)
            .Map(m => m.MapKey("idproduto"));

            HasRequired(e => e.Compra)
            .WithMany(e => e.ItemCompras)
            .Map(m => m.MapKey("idcompra"));            
        }
    }
}