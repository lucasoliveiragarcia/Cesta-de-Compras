using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class CidadeMap : EntityTypeConfiguration<Cidade>
    {
        public CidadeMap()
        { 
            //Chave Primaria
            this.HasKey(t => t.IdCidade);
              

            //Propriedades
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100);

            //Table & Column Mappings
            this.ToTable("cidade");
            this.Property(t => t.IdCidade).HasColumnName("idcidade");
            this.Property(t => t.IdEstado).HasColumnName("idestado");
            this.Property(t => t.Nome).HasColumnName("nome");
            

            ////Relacionamentos
            //this.HasRequired(d => d.Estado)
            //    .WithMany(d => d.Cidade)    
            //    .HasForeignKey(d => d.IdEstado);
        }
    }
}