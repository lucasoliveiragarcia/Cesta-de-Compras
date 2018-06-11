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

            //Propriedades
            this.Property(t => t.Cep)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Numero)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Complemento)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Logradouro)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.IdEndereco)
                .IsRequired();

            //Table & Column Mappings
            ToTable("endereco");
            Property(t => t.IdEndereco).HasColumnName("idendereco");
            Property(t => t.Cep).HasColumnName("cep");
            Property(t => t.Numero).HasColumnName("numero");
            Property(t => t.Complemento).HasColumnName("complemento");
            Property(t => t.Logradouro).HasColumnName("logradouro");
            

            //Relacionamentos
            HasRequired(d => d.Cidade)
            .WithMany(d => d.Enderecos)
            .Map(m => m.MapKey("IdCidade"));//chave estrangeira

            HasRequired(d => d.Pessoa)
            .WithOptional(d => d.Endereco)
            .Map(m => m.MapKey("IdCidade"));

        }
    }
}