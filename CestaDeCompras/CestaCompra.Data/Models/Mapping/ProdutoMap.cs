using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration;

namespace CestaCompra.Data.Models.Mapping
{
    public class ProdutoMap : EntityTypeConfiguration<Produto>
    {
        public ProdutoMap()
        {
            //Chave Primaria
            this.HasKey(t => t.IdProduto);

            //Propriedades
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100);
            this.Property(t => t.Valido)
                .IsRequired();

            //Table & Column Mappings
            this.ToTable("produto");
            this.Property(t => t.IdProduto).HasColumnName("idproduto");
            this.Property(t => t.IdMarca).HasColumnName("idmarca");
            this.Property(t => t.IdTipoMedida).HasColumnName("idtipomedida");
            this.Property(t => t.Unidade).HasColumnName("unidade");
            this.Property(t => t.Nome).HasColumnName("nome");
            this.Property(t => t.Valido).HasColumnName("valido");

        }
    }
}