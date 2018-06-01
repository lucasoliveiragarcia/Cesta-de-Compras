using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class ConsumidorMap : EntityTypeConfiguration<consumidor>
    {
        public ConsumidorMap()
        {
            //Chave Primaria
            this.HasKey(t => t.idconsumidor);

            //Propriedades
            this.Property(t => t.admnistrador)
                .IsRequired();
                
            this.Property(t => t.login)
                 .IsRequired()
                .HasMaxLength(40);
            this.Property(t => t.senha)
                 .IsRequired()
                .HasMaxLength(40);
            this.Property(t => t.nivel)
                .IsRequired()
                .HasMaxLength(10);

            //Table & Column Mappings
            this.ToTable("consumidor");
            this.Property(t => t.idconsumidor).HasColumnName("idconsumidor");
            this.Property(t => t.idpessoa).HasColumnName("idpessoa");
            this.Property(t => t.datacadastro).HasColumnName("datacadastro");
            this.Property(t => t.admnistrador).HasColumnName("admnistrador");
            this.Property(t => t.login).HasColumnName("login");
            this.Property(t => t.senha).HasColumnName("senha");
            this.Property(t => t.nivel).HasColumnName("nivel");
        }
    }
}