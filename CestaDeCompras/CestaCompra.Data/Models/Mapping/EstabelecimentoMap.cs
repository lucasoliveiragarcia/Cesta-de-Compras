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
                .HasColumnName("Nome");

            this.Property(t => t.Unidade)
                .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("Unidade");

            this.Property(t => t.Logo)
                .IsRequired()
                .HasColumnName("Logo");

            this.Property(t => t.IdEstabelecimento)
                .IsRequired()
                .HasColumnName("IdEstabelecimento");




            //Table
            this.ToTable("Estabelecimento");

            //Relacionamentos
            HasRequired(d => d.Endereco)
            .WithOptional(d => d.Estabelecimento)
            .Map(m => m.MapKey("IdEndereco"));



        }
    }
}