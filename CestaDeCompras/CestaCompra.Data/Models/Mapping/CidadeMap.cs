using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class CidadeMap : EntityTypeConfiguration<cidade>
    {
        public CidadeMap()
        { 
            //Chave Primaria
            this.HasKey(t => t.idcidade);
              

            //Propriedades
            this.Property(t => t.nome)
                .IsRequired()
                .HasMaxLength(100);

        }
    }
}