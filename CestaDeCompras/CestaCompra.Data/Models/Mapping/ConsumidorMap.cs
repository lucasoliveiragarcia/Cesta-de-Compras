using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class ConsumidorMap : EntityTypeConfiguration<Consumidor>
    {
        public ConsumidorMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdConsumidor);

            //Propriedades & Column Mappings
            this.Property(t => t.Admnistrador)
                .IsRequired()
                .HasColumnName("Admnistrador"); 

            this.Property(t => t.Login)
                .IsRequired()
                .HasMaxLength(40)
                .HasColumnName("Login");

            this.Property(t => t.Senha)
                .IsRequired()
                .HasMaxLength(200)
                .HasColumnName("Senha"); 

            this.Property(t => t.Nivel)
                .IsRequired()               
                .HasColumnName("Nivel");

            this.Property(t => t.IdConsumidor)
                .IsRequired()
                .HasColumnName("IdConsumidor");

            this.Property(t => t.DataCadastro)
                .IsRequired()
                .HasColumnName("DataCadastro");

            //Table 
            this.ToTable("Consumidor");

            //Relacionamentos
            HasRequired(d => d.Pessoa)
            .WithOptional(d => d.Consumidor)
            .Map(m => m.MapKey("IdPessoa"));
        }
    }
}