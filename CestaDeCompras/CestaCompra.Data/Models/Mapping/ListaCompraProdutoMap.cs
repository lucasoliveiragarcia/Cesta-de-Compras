using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class ListaCompraProdutoMap : EntityTypeConfiguration<ListaCompraProduto>
    {
        public ListaCompraProdutoMap()
        {
   

            //Table & Column Mappings
            this.ToTable("listacompraproduto");
            this.Property(t => t.IdProduto).HasColumnName("idproduto");
            this.Property(t => t.IdListaCompra).HasColumnName("idlistacompra");
            this.Property(t => t.Quantidade).HasColumnName("quantidade");

            ////Relacionamentos
            //this.HasRequired(d => d.Produto)
            //    .WithMany(d => d.ListaCompra)
            //    .HasForeignKey(d => d.IdProduto);

        }       

               
                
    }
}