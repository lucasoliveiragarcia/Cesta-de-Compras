using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class ListaCompraMap : EntityTypeConfiguration<ListaCompra>
    {
        public ListaCompraMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdListaCompra);

            //Propriedades & Column Mappings
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100)               
                .HasColumnName("Nome");

            this.Property(t => t.IdListaCompra)
                .IsRequired()
                .HasColumnName("IdListaCompra");

            this.Property(t => t.DataUltimaModificacao)
                .IsRequired()
                .HasColumnName("DataUltimaModificacao");

            //Table
            this.ToTable("ListaCompra");

            //Relacionamentos
            HasRequired(d => d.Consumidor)
            .WithMany(d => d.ListasCompra)
            .Map(m => m.MapKey("IdConsumidor"));



        }
    }
}