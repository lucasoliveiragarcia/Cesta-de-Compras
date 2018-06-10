using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models.Mapping
{
    public class ItemCompraMap : EntityTypeConfiguration<ItemCompra>
    {
        public ItemCompraMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdCompra);


            //Propriedades
            this.Property(t => t.Quantidade)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Preco)
                .IsRequired();


            this.Property(t => t.Valido)
                .IsRequired();

            this.Property(t => t.IdCompra)
                .IsRequired();

            this.Property(t => t.IdProduto)
                .IsRequired();

            this.Property(t => t.IdEstabelecimento)
                .IsRequired();
            //Table & Column Mappings
            this.ToTable("itemcompra");
            this.Property(t => t.IdCompra).HasColumnName("idcompra");
            this.Property(t => t.IdProduto).HasColumnName("idproduto");
            this.Property(t => t.IdEstabelecimento).HasColumnName("idestabelecimento");
            this.Property(t => t.Quantidade).HasColumnName("quantidade");
            this.Property(t => t.Preco).HasColumnName("preco");
            this.Property(t => t.Valido).HasColumnName("valido");

            HasRequired(e => e.Produto)
            .WithMany(e => e.ItensCompra);

            HasRequired(e => e.Estabelecimento)
            .WithMany(e => e.ItensCompra);
           


        }
    }
}