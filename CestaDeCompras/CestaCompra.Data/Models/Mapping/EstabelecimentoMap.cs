using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class EstabelecimentoMap : EntityTypeConfiguration<estabelecimento>
    {
        public EstabelecimentoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.idestabelecimento);

            //Propriedades
            this.Property(t => t.nome)
                .IsRequired()
                .HasMaxLength(100);
            this.Property(t => t.unidade)
                .IsRequired()
                .HasMaxLength(100);
        }
    }
}