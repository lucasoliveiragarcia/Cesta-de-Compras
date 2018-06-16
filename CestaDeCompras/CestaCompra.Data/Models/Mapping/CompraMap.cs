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
                .HasColumnName("valortotal");

            this.Property(t => t.IdCompra)
                .IsRequired()
                .HasColumnName("idcompra");

            this.Property(t => t.DataCompra)
                .IsRequired()
                .HasColumnName("datacompra");

            //Table
            this.ToTable("compra");

            //Relacionamentos
            //1:N - 1 compra pertence a 1 consumidor e 1 consumidor pode ter varias compras
            HasRequired(cr => cr.Consumidor)
            .WithMany(cons => cons.Compras)
            .Map(m => m.MapKey("idconsumidor"));

            HasRequired(cr => cr.Estabelecimento)
            .WithMany(cons => cons.Compras)
            .Map(m => m.MapKey("idestabelecimento"));
        }
    }
}