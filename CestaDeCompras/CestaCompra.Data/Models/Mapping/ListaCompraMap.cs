using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

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

            //Table & Column Mappings
            this.ToTable("listacompra");
            this.Property(t => t.IdListaCompra).HasColumnName("idlistacompra");
            this.Property(t => t.IdConsumidor).HasColumnName("idconsumidor");
            this.Property(t => t.Nome).HasColumnName("nome");
            this.Property(t => t.DataUltimaModificacao).HasColumnName("dataultimamodificacao");

            //Relacionamentos
            this.HasRequired(d => d.Usuario)
                .WithMany(d => d.ListaCompra)
                .HasForeignKey(d => d.IdUsuario);

        }
    }
}