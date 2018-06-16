using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class ItemListaCompraMap : EntityTypeConfiguration<ItemListaCompra>
    {
        public ItemListaCompraMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdItemListaCompra);

            //Propriedades & Column Mappings
            this.Property(t => t.IdItemListaCompra)
                .IsRequired()
                .HasMaxLength(10)
                .HasColumnName("iditemlistacompra");

            this.Property(t => t.Quantidade)
                .IsRequired()
                .HasColumnName("quantidade");

            //Table
            this.ToTable("itemlistacompra");

            //Relacionamentos
            HasRequired(d => d.Produto)
            .WithMany(d => d.ItensListaCompra)
            .Map(m => m.MapKey("idproduto"));

            HasRequired(d => d.ListaCompra)
            .WithMany(d => d.ItensListaCompra)
            .Map(m => m.MapKey("idlistacompra"));
        }
    }
}