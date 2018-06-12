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

            this.Property(t => t.IdProduto)
                .IsRequired();

            this.Property(t => t.Quantidade)
                .IsRequired();

            //Table & Column Mappings
            this.ToTable("listacompraproduto");
            this.Property(t => t.IdProduto).HasColumnName("idproduto");
            this.Property(t => t.IdItemListaCompra).HasColumnName("iditemlistacompra");
            this.Property(t => t.Quantidade).HasColumnName("quantidade");
            
            HasRequired(d => d.Produto)
            .WithMany(d => d.ItensListaCompra)
            .Map(m => m.MapKey("IdProduto"));

            HasRequired(d => d.ListaCompra)
            .WithMany(d => d.ItensListaCompra)
            .Map(m => m.MapKey("IdListaCompra"));

        }



    }
}