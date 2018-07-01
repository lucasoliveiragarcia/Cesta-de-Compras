using System;
using System.Collections.Generic;

namespace CestaCompra.Data.Models
{
    public class ListaCompra
    {
        public int IdListaCompra { get; set; }      
        public string Nome { get; set; }
        public DateTime DataUltimaModificacao { get; set; }
        public virtual Consumidor Consumidor { get; set; }
        public virtual List<ItemListaCompra> ItensListaCompra { get; set; }
    }
}