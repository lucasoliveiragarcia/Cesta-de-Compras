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
            this.HasKey(t => t.IdTipomedida);

            //Propriedades
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.TipoMedida)
                .IsRequired();

            this.Property(t => t.IdTipomedida)
                .IsRequired();

            //Table & Column Mappings
            this.ToTable("medida");
            this.Property(t => t.IdTipomedida).HasColumnName("idtipomedida");
            this.Property(t => t.Descricao).HasColumnName("descricao");
            this.Property(t => t.TipoMedida).HasColumnName("tipomedida");
        }

    }
}