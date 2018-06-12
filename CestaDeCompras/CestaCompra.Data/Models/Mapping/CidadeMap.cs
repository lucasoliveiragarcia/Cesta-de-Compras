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
            
            this.Property(t => t.IdEstado)
                .IsRequired();

            //Table & Column Mappings 
            //Mapeamento das propriedades da classe para o banco de dados
            this.ToTable("cidade");
            this.Property(t => t.IdCidade).HasColumnName("idcidade");
            this.Property(t => t.IdEstado).HasColumnName("idestado");
            this.Property(t => t.Nome).HasColumnName("nome");

            //1:N - 1 Cidade DEVE ter 1 Estado e 1 estado pode ter várias cidades
             HasRequired(cidade => cidade.Estado)
             .WithMany(e => e.Cidades)
             .Map(m => m.MapKey("IdEstado"));//chave estrangeira
            
        }
    }
}