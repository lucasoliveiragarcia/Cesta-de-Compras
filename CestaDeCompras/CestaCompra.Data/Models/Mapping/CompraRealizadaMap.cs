using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class CompraRealizadaMap : EntityTypeConfiguration<comprarealizada>
    {
        public CompraRealizadaMap()
        { 
            //Chave Primaria
            this.HasKey(t => t.idcomprarealizada);

            //Propriedades
            this.Property(t => t.valortotal)
                .IsRequired();
                

            //Table & Column Mappings
            this.ToTable("comprarealizada");
            this.Property(t => t.idcomprarealizada).HasColumnName("idcomprarealizada");
            this.Property(t => t.idconsumidor).HasColumnName("idconsumidor");
            this.Property(t => t.datacompra).HasColumnName("datacompra");
            this.Property(t => t.valortotal).HasColumnName("valortotal");

        }
    }
}