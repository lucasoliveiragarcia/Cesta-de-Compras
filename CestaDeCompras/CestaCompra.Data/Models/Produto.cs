using System;
using System.Collections.Generic;

namespace CestaCompra.Data.Models
{
    public class Produto
    {
        public int IdProduto { get; set; }               
        public int Unidade { get; set; }
        public string Nome { get; set; }
        public double Valido { get; set; }
        public virtual Marca Marca { get; set; }
        public virtual Medida Medida { get; set; }
        public virtual List<ItemListaCompra> ItensListaCompra { get; set; }
        public virtual List<EstabelecimentoProduto> EstabelecimentoProduto { get; set; }
        public virtual List<ItemCompra> ItensCompra{ get; set; }
    }
}