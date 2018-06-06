﻿using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class UsuarioMap : EntityTypeConfiguration<Usuario>
    {
        public UsuarioMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdUsuario);

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

            //Table & Column Mappings
            this.ToTable("usuario");
            this.Property(t => t.IdUsuario).HasColumnName("idusuario");
            this.Property(t => t.IdPessoa).HasColumnName("idpessoa");
            this.Property(t => t.DataCadastro).HasColumnName("datacadastro");
            this.Property(t => t.Admnistrador).HasColumnName("admnistrador");
            this.Property(t => t.Login).HasColumnName("login");
            this.Property(t => t.Senha).HasColumnName("senha");
            this.Property(t => t.Nivel).HasColumnName("nivel");

            //Relacionamentos
            this.HasRequired(d => d.Pessoa)
                .WithMany(d => d.Usuario)
                .HasForeignKey(d => d.IdPessoa);
        }
    }
}