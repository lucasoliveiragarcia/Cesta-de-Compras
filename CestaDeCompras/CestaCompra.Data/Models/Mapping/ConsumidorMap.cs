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
            this.Property(t => t.Administrador)
                .IsRequired()
                .HasColumnName("admnistrador"); 

            this.Property(t => t.Login)
                .IsRequired()
                .HasMaxLength(40)
                .HasColumnName("login");

            this.Property(t => t.Senha)
                .IsRequired()
                .HasMaxLength(200)
                .HasColumnName("senha"); 

            this.Property(t => t.Nivel)
                .IsRequired()               
                .HasColumnName("nivel");

            this.Property(t => t.IdConsumidor)
                .IsRequired()
                .HasColumnName("idconsumidor");

            this.Property(t => t.DataCadastro)
                .IsRequired()
                .HasColumnName("datacadastro");

            //Table 
            this.ToTable("consumidor");

            //Relacionamentos
            HasRequired(d => d.Pessoa)
            .WithOptional(d => d.Consumidor)
            .Map(m => m.MapKey("idpessoa"));
        }
    }
}