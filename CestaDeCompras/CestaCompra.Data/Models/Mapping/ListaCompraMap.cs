using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class ListaCompraMap : EntityTypeConfiguration<listacompra>
    {
        public ListaCompraMap()
        {
            //Chave Primaria
            this.HasKey(t => t.idlistacompra);

            //Propriedades
            this.Property(t => t.nome)
                .IsRequired()
                .HasMaxLength(100);
        }
    }
}