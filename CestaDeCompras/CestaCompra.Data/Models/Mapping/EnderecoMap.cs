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

            //Table & Column Mappings
            this.ToTable("endereco");
            this.Property(t => t.IdEndereco).HasColumnName("idendereco");
            this.Property(t => t.Cep).HasColumnName("cep");
            this.Property(t => t.Numero).HasColumnName("numero");
            this.Property(t => t.Complemento).HasColumnName("complemento");
            this.Property(t => t.Logradouro).HasColumnName("logradouro");
            

            //Relacionamentos
            this.HasRequired(d => d.Bairro)
                .WithMany(d => d.Endereco)
                .HasForeignKey(d => d.IdBairro);

        }
    }
}