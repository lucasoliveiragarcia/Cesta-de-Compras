using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class PaisMap : EntityTypeConfiguration<pais>
    {
        public PaisMap()
        {
            //Chave Primaria
            this.HasKey(t => t.idpais);

            //Propriedades
            this.Property(t => t.nome)
                .IsRequired()
                .HasMaxLength(100);
        }
    }
}