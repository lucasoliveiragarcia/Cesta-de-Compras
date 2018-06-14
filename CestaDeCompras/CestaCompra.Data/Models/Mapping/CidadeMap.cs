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


            //Mapeamento das propriedades da classe para o banco de dados
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100)
                .HasColumnName("Nome");

            this.Property(t => t.IdCidade)
                .IsRequired()
                .HasColumnName("IdCidade");

            //Table
            this.ToTable("Cidade");

            //Relacionamentos
            //1:N - 1 Cidade DEVE ter 1 Estado e 1 estado pode ter várias cidades
            HasRequired(cidade => cidade.Estado)
            .WithMany(e => e.Cidades)
            .Map(m => m.MapKey("IdEstado"));//chave estrangeira



        }
    }
}