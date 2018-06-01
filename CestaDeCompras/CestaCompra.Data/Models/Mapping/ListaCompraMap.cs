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

            //Table & Column Mappings
            this.ToTable("listacompra");
            this.Property(t => t.idlistacompra).HasColumnName("idlistacompra");
            this.Property(t => t.idconsumidor).HasColumnName("idconsumidor");
            this.Property(t => t.nome).HasColumnName("nome");
            this.Property(t => t.dataultimamodificacao).HasColumnName("dataultimamodificacao");
 
        }
    }
}