using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class EstadoMap : EntityTypeConfiguration<estado>
    {
        public EstadoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.idestado);


            //Propriedades
            this.Property(t => t.nome)
                .IsRequired()
                .HasMaxLength(100);

            //Table & Column Mappings
            this.ToTable("estado");
            this.Property(t => t.idestado).HasColumnName("idestado");
            this.Property(t => t.idpais).HasColumnName("idpais");
            this.Property(t => t.nome).HasColumnName("nome");

        }
    }
}