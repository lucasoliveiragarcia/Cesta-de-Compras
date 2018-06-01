using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class ListaCompraXProdutoMap : EntityTypeConfiguration<ListaCompraXProduto>
    {
        public ListaCompraXProdutoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdListaCompraXProduto);

            //Table & Column Mappings
            this.ToTable("listacompraxproduto");
            this.Property(t => t.IdListaCompraXProduto).HasColumnName("idlistacompraxproduto");
            this.Property(t => t.IdProduto).HasColumnName("idproduto");
            this.Property(t => t.IdListaCompra).HasColumnName("idlistacompra");
            this.Property(t => t.Quantidade).HasColumnName("quantidade");

        }       

               
                
    }
}