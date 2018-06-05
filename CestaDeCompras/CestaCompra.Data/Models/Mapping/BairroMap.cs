using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class BairroMap : EntityTypeConfiguration<Bairro>
    {
        public BairroMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdBairro);


            //Propriedades
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100);

            //Table & Column Mappings
            this.ToTable("bairro");
            this.Property(t => t.IdBairro).HasColumnName("idbairro");
            this.Property(t => t.IdCidade).HasColumnName("idcidade");
            this.Property(t => t.Nome).HasColumnName("nome");

            //Relacionamentos
            this.HasRequired(d => d.Cidade)
                .WithMany(d => d.Bairro)
                .HasForeignKey(d => d.IdCidade);
        }

        
    }
}