using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class ProdutoSupermercadoMap : EntityTypeConfiguration<produtosupermercado>
    {
        public ProdutoSupermercadoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.idprodutosupermercado);

            //Propriedades
            this.Property(t => t.preco)
                .IsRequired()
                .HasMaxLength(10);
        }
    }
}