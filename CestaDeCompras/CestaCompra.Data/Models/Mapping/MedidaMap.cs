using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;


namespace CestaCompra.Data.Models.Mapping
{
    public class MedidaMap : EntityTypeConfiguration<Medida>
    {
        public MedidaMap()
        {

            //Chave Primaria
            this.HasKey(t => t.IdMedida);

            //Propriedades & Column Mappings
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(20)
                .HasColumnName("descricao");

            this.Property(t => t.TipoMedida)
                .IsRequired()
                .HasColumnName("tipomedida");

            this.Property(t => t.IdMedida)
                .IsRequired()
                .HasColumnName("idmedida");

            //Table
            this.ToTable("medida");
        }
    }
}