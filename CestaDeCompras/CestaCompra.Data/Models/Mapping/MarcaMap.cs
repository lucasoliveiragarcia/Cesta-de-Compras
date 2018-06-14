using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class MarcaMap : EntityTypeConfiguration<Marca>
    {
        public MarcaMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdMarca);

            //Propriedades
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(50)
                .HasColumnName("Nome");

            this.Property(t => t.IdMarca)
                .IsRequired()
                .HasColumnName("IdMarca");

            //Table & Column Mappings
            this.ToTable("Marca");


        }
    }
}