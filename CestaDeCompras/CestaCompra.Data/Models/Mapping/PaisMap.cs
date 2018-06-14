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

            //Propriedades & Column Mappings
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("Nome");

            this.Property(t => t.IdPais)
                .IsRequired()
                .HasColumnName("IdPais");

            //Table
            this.ToTable("Pais");

        }
    }
}