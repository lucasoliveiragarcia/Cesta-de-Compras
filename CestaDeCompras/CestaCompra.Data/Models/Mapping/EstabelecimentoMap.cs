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

            //Propriedades  & Column Mappings
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("nome");

            this.Property(t => t.Unidade)
                .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("unidade");

            this.Property(t => t.Logo)
                .IsRequired()
                .HasColumnName("logo");

            this.Property(t => t.IdEstabelecimento)
                .IsRequired()
                .HasColumnName("idestabelecimento");

            //Table
            this.ToTable("estabelecimento");

            //Relacionamentos
            HasRequired(d => d.Endereco)
            .WithOptional(d => d.Estabelecimento)
            .Map(m => m.MapKey("idendereco"));
        }
    }
}