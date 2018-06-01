using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class ListaCompraXProdutoMap : EntityTypeConfiguration<listacompraxproduto>
    {
        public ListaCompraXProdutoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.idlistacompraxproduto);

            //Table & Column Mappings
            this.ToTable("listacompraxproduto");
            this.Property(t => t.idlistacompraxproduto).HasColumnName("idlistacompraxproduto");
            this.Property(t => t.idproduto).HasColumnName("idproduto");
            this.Property(t => t.idlistacompra).HasColumnName("idlistacompra");
            this.Property(t => t.quantidade).HasColumnName("quantidade");

        }       

               
                
    }
}