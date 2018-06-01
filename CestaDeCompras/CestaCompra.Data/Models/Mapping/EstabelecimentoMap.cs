using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class EstabelecimentoMap : EntityTypeConfiguration<Estabelecimento>
    {
        public EstabelecimentoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdEstabelecimento);

            //Propriedades
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100);
            this.Property(t => t.Unidade)
                .IsRequired()
                .HasMaxLength(100);

            //Table & Column Mappings
            this.ToTable("estabelecimento");
            this.Property(t => t.IdEstabelecimento).HasColumnName("idestabelecimento");
            this.Property(t => t.IdEndereco).HasColumnName("idendereco");
            this.Property(t => t.Nome).HasColumnName("nome");
            this.Property(t => t.Unidade).HasColumnName("unidade");
            this.Property(t => t.Logo).HasColumnName("logo");

        }
    }
}