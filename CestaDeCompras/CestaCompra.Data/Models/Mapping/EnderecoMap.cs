using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class EnderecoMap : EntityTypeConfiguration<Endereco>
    {
        public EnderecoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdEndereco);

            //Propriedades  & Column Mappings
            this.Property(t => t.Cep)
                .IsRequired()
                .HasMaxLength(8)
                .HasColumnName("cep");

            this.Property(t => t.Numero)
                .IsRequired()
                .HasMaxLength(20)
                .HasColumnName("numero");

            this.Property(t => t.Complemento)
                .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("complemento");

            this.Property(t => t.Logradouro)
                .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("logradouro");

            this.Property(t => t.IdEndereco)
                .IsRequired()
                .HasColumnName("idendereco");

            //Table
            ToTable("endereco");

            //Relacionamentos
            HasOptional(d => d.Cidade)
            .WithMany(d => d.Enderecos)
            .Map(m => m.MapKey("idcidade"));             
        }
    }
}