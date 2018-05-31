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
                .IsRequired()
                .HasMaxLength(7);
        }
    }
}