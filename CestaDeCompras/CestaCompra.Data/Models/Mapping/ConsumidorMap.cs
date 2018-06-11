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

            //Propriedades
            this.Property(t => t.Admnistrador)
                .IsRequired();

            this.Property(t => t.Login)
                 .IsRequired()
                .HasMaxLength(40);

            this.Property(t => t.Senha)
                 .IsRequired()
                .HasMaxLength(40);

            this.Property(t => t.Nivel)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.IdConsumidor)
                .IsRequired();

            this.Property(t => t.IdPessoa)
                .IsRequired();

            this.Property(t => t.DataCadastro)
                .IsRequired();
            //Table & Column Mappings
            this.ToTable("consumidor");
            this.Property(t => t.IdConsumidor).HasColumnName("idconsumidor");
            this.Property(t => t.IdPessoa).HasColumnName("idpessoa");
            this.Property(t => t.DataCadastro).HasColumnName("datacadastro");
            this.Property(t => t.Admnistrador).HasColumnName("admnistrador");
            this.Property(t => t.Login).HasColumnName("login");
            this.Property(t => t.Senha).HasColumnName("senha");
            this.Property(t => t.Nivel).HasColumnName("nivel");

            //Relacionamentos
            HasRequired(d => d.Pessoa)
            .WithOptional(d => d.Consumidor)
            .Map(m => m.MapKey("IdPessoa"));
        }
    }
}