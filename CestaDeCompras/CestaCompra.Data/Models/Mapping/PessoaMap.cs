using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;


namespace CestaCompra.Data.Models.Mapping
{
    public class PessoaMap : EntityTypeConfiguration<Pessoa>
    {
        public PessoaMap()
        {
            //this.ToTable("pessoa", "\"public\"");

            //Chave Primaria
            this.HasKey(t => t.IdPessoa);


            //Propriedades
            this.Property(t => t.Email)
                 .IsRequired()
                .HasMaxLength(100);
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100);
            this.Property(t => t.Sobrenome)
                .HasMaxLength(100);

            //Table & Column Mappings
            this.ToTable("pessoa");
            this.Property(t => t.IdPessoa).HasColumnName("idpessoa");
            this.Property(t => t.IdEndereco).HasColumnName("idendereco");
            this.Property(t => t.Email).HasColumnName("email");
            this.Property(t => t.DataNascimento).HasColumnName("datanascimento");
            this.Property(t => t.Nome).HasColumnName("nome");
            this.Property(t => t.Sobrenome).HasColumnName("sobrenome");
            
        }

    }
}