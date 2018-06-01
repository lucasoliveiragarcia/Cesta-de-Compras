using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;


namespace CestaCompra.Data.Models.Mapping
{
    public class PessoaMap : EntityTypeConfiguration<pessoa>
    {
        public PessoaMap()
        {
            //this.ToTable("pessoa", "\"public\"");

            //Chave Primaria
            this.HasKey(t => t.idpessoa);


            //Propriedades
            this.Property(t => t.email)
                 .IsRequired()
                .HasMaxLength(100);
            this.Property(t => t.nome)
                .IsRequired()
                .HasMaxLength(100);
            this.Property(t => t.sobrenome)
                .HasMaxLength(100);

            //Table & Column Mappings
            this.ToTable("pessoa");
            this.Property(t => t.idpessoa).HasColumnName("idpessoa");
            this.Property(t => t.idendereco).HasColumnName("idendereco");
            this.Property(t => t.email).HasColumnName("email");
            this.Property(t => t.datanascimento).HasColumnName("datanascimento");
            this.Property(t => t.nome).HasColumnName("nome");
            this.Property(t => t.sobrenome).HasColumnName("sobrenome");
            
        }

    }
}