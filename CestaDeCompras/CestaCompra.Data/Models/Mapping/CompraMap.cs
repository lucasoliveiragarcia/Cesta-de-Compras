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
                .IsRequired()
                .HasColumnName("ValorTotal");

            this.Property(t => t.IdCompra)
                .IsRequired()
                .HasColumnName("IdCompra");

            this.Property(t => t.DataCompra)
                .IsRequired()
                .HasColumnName("DataCompra");

            //Table
            this.ToTable("Compra");

            //Relacionamentos
            //1:N - 1 compra pertence a 1 consumidor e 1 consumidor pode ter varias compras
            HasRequired(cr => cr.Consumidor)
            .WithMany(cons => cons.Compras)
            .Map(m => m.MapKey("IdConsumidor"));//chave estrangeira

            HasRequired(cr => cr.Estabelecimento)
            .WithMany(cons => cons.Compras)
            .Map(m => m.MapKey("IdEstabelecimento"));


        }
    }
}