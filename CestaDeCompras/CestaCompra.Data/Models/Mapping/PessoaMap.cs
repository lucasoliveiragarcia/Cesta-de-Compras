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
                .HasColumnName("email");

            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("nome");

            this.Property(t => t.Sobrenome)
                .HasMaxLength(100)
                .HasColumnName("sobrenome");

            this.Property(t => t.IdPessoa)
                .IsRequired()
                .HasColumnName("idpessoa");


            this.Property(t => t.DataNascimento)
                .IsRequired()
                .HasColumnName("datanascimento");
            
            //Table 
            this.ToTable("pessoa");

            //Relacionamentos
            HasRequired(d => d.Endereco)
           .WithOptional(d => d.Pessoa)
           .Map(m => m.MapKey("idendereco"));
        }

    }
}