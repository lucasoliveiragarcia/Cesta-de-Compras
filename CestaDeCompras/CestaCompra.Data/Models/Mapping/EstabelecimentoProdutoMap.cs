using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class EstabelecimentoProdutoMap : EntityTypeConfiguration<EstabelecimentoProduto>
    {
        public EstabelecimentoProdutoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdEstabelecimentoProduto);

            //Propriedades & Column Mappings
            this.Property(t => t.Preco)
                .IsRequired()               
                .HasColumnName("preco");

            this.Property(t => t.IdEstabelecimentoProduto)
                .IsRequired()
                .HasColumnName("idestabelecimentoproduto");

            //Table
            this.ToTable("estabelecimentoproduto");

            //Relacionamentos
            HasRequired(d => d.Estabelecimento)
            .WithMany(d => d.EstabelecimentoProduto)
            .Map(m => m.MapKey("idestabelecimento"));

            HasRequired(d => d.Produto)
            .WithMany(d => d.EstabelecimentoProduto)
            .Map(m => m.MapKey("idproduto"));
        }
    }
}