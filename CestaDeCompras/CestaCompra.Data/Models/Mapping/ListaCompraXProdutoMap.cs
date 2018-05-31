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
        }       

               
                
    }
}