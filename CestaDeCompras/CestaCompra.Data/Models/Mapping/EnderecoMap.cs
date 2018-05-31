using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class EnderecoMap : EntityTypeConfiguration<endereco>
    {
        public EnderecoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.idendereco);

            //Propriedades
            this.Property(t => t.cep)
                .IsRequired()
                .HasMaxLength(8);
            this.Property(t => t.numero)
                .IsRequired()
                .HasMaxLength(20);
            this.Property(t => t.complemento)
                .IsRequired()
                .HasMaxLength(100);
            this.Property(t => t.logradouro)
                .IsRequired()
                .HasMaxLength(100);
        }
    }
}