using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;


namespace CestaCompra.Data.Models.Mapping
{
    public class TipoMedidaMap : EntityTypeConfiguration<tipomedida>
    {
        public TipoMedidaMap()
        {

            //Chave Primaria
            this.HasKey(t => t.idtipomedida);

            //Propriedades
            this.Property(t => t.descricao)
                .IsRequired()
                .HasMaxLength(20);
        }

    }
}