using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class CompraRealizadaMap : EntityTypeConfiguration<CompraRealizada>
    {
        public CompraRealizadaMap()
        { 
            //Chave Primaria
            this.HasKey(t => t.IdComprarealizada);

            //Propriedades
            this.Property(t => t.ValorTotal)
                .IsRequired();
                

            //Table & Column Mappings
            this.ToTable("comprarealizada");
            this.Property(t => t.IdComprarealizada).HasColumnName("idcomprarealizada");
            this.Property(t => t.IdConsumidor).HasColumnName("idconsumidor");
            this.Property(t => t.DataCompra).HasColumnName("datacompra");
            this.Property(t => t.ValorTotal).HasColumnName("valortotal");

        }
    }
}