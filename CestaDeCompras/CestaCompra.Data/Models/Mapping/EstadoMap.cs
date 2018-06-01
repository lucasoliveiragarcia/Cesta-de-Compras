using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class EstadoMap : EntityTypeConfiguration<Estado>
    {
        public EstadoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdEstado);


            //Propriedades
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100);

            //Table & Column Mappings
            this.ToTable("estado");
            this.Property(t => t.IdEstado).HasColumnName("idestado");
            this.Property(t => t.IdPais).HasColumnName("idpais");
            this.Property(t => t.Nome).HasColumnName("nome");

        }
    }
}