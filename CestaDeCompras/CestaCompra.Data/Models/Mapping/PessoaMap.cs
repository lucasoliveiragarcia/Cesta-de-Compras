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
            

            //Chave Primaria
            this.HasKey(t => t.IdPessoa);


            //Propriedades & Column Mappings
            this.Property(t => t.Email)
                 .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("Email");

            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("Nome");

            this.Property(t => t.Sobrenome)
                .HasMaxLength(100)
                .HasColumnName("Sobrenome");

            this.Property(t => t.IdPessoa)
                .IsRequired()
                .HasColumnName("IdPessoa");


            this.Property(t => t.DataNascimento)
                .IsRequired()
                .HasColumnName("DataNascimento");
            
            //Table 
            this.ToTable("Pessoa");

            //Relacionamentos
            HasRequired(d => d.Endereco)
           .WithOptional(d => d.Pessoa);
        }

    }
}