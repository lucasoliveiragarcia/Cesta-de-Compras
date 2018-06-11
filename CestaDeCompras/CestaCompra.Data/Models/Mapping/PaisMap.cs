using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class PaisMap : EntityTypeConfiguration<Pais>
    {
        public PaisMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdPais);

            //Propriedades
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.IdPais)
                .IsRequired();

            //Table & Column Mappings
            this.ToTable("pais");
            this.Property(t => t.IdPais).HasColumnName("idpais");
            this.Property(t => t.Nome).HasColumnName("nome");

        }
    }
}