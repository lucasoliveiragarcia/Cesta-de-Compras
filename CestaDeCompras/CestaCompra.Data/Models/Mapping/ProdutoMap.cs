using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class ProdutoMap : EntityTypeConfiguration<produto>
    {
        public ProdutoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.idproduto);

            //Propriedades
            this.Property(t => t.nome)
                .IsRequired()
                .HasMaxLength(100);
            this.Property(t => t.valido)
                .IsRequired();
               
        }
    }
}