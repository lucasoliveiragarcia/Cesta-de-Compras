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
            this.Property(t => t.Quantidade)
                .IsRequired()
                .HasMaxLength(10)
                .HasColumnName("Quantidade");

            this.Property(t => t.Preco)
                .IsRequired()
                .HasColumnName("Preco");

            this.Property(t => t.Valido)
                .IsRequired()
                .HasColumnName("Valido");

            this.Property(t => t.IdEstabelecimento)
                .IsRequired()
                .HasColumnName("IdEstabelecimento");

            //Table
            this.ToTable("ItemCompra");

            //Relacionamentos
            HasRequired(e => e.Produto)
            .WithMany(e => e.ItensCompra)
            .Map(m => m.MapKey("IdProduto"));

            HasRequired(e => e.Compra)
            .WithMany(e => e.ItemCompras)
            .Map(m => m.MapKey("IdCompra"));            
        }
    }
}