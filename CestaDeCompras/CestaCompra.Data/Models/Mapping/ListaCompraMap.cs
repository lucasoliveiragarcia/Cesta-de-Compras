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

            //Propriedades
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.IdListaCompra)
                .IsRequired();

            this.Property(t => t.IdConsumidor)
                .IsRequired();

            this.Property(t => t.DataUltimaModificacao)
                .IsRequired();

            //Table & Column Mappings
            this.ToTable("itemlistacompra");
            this.Property(t => t.IdListaCompra).HasColumnName("idlistacompra");
            this.Property(t => t.IdConsumidor).HasColumnName("idconsumidor");
            this.Property(t => t.Nome).HasColumnName("nome");
            this.Property(t => t.DataUltimaModificacao).HasColumnName("dataultimamodificacao");



            //Relacionamentos
            HasRequired(d => d.Consumidor)
            .WithMany(d => d.ListasCompra)
            .HasForeignKey(d => d.IdConsumidor);



        }
    }
}