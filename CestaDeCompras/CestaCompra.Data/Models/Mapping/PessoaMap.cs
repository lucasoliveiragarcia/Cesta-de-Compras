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
        }

    }
}