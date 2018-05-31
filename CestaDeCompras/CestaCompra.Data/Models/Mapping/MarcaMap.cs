﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class MarcaMap : EntityTypeConfiguration<marca>
    {
        public MarcaMap()
        {
            //Chave Primaria
            this.HasKey(t => t.idmarca);

            //Propriedades
            this.Property(t => t.nome)
                .IsRequired()
                .HasMaxLength(50);
        }
    }
}