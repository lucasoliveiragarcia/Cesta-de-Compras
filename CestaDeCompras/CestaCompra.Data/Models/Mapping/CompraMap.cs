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
            this.Property(t => t.ValorTotal)
                .IsRequired();

            this.Property(t => t.IdCompra)
                .IsRequired();

            this.Property(t => t.IdConsumidor)
                .IsRequired();

            this.Property(t => t.DataCompra)
                .IsRequired();

            //Table & Column Mappings
            this.ToTable("compra");
            this.Property(t => t.IdCompra).HasColumnName("idcompra");
            this.Property(t => t.IdConsumidor).HasColumnName("idconsumidor");
            this.Property(t => t.DataCompra).HasColumnName("datacompra");
            this.Property(t => t.ValorTotal).HasColumnName("valortotal");



            //1:N - 1 compra pertence a 1 consumidor e 1 consumidor pode ter varias compras
            HasRequired(cr => cr.Consumidor)
            .WithMany(cons => cons.Compras)
            .Map(m => m.MapKey("IdConsumidor"));//chave estrangeira

            HasRequired(cr => cr.ItemCompra)
           .WithMany(cons => cons.Compras)
           .Map(m => m.MapKey("IdConsumidor"));//chave estrangeira

        }
    }
}