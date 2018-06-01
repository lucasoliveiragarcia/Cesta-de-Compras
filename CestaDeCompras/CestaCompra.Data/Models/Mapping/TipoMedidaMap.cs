using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;


namespace CestaCompra.Data.Models.Mapping
{
    public class TipoMedidaMap : EntityTypeConfiguration<TipoMedida>
    {
        public TipoMedidaMap()
        {

            //Chave Primaria
            this.HasKey(t => t.IdTipomedida);

            //Propriedades
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(20);

            //Table & Column Mappings
            this.ToTable("tipomedida");
            this.Property(t => t.IdTipomedida).HasColumnName("idtipomedida");
            this.Property(t => t.Descricao).HasColumnName("tipomedida");

        }

    }
}