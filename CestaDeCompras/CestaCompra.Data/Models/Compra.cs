using System;
using System.Collections.Generic;

namespace CestaCompra.Data.Models
{
    public class Compra
    {
        public int IdCompra { get; set; }        
        public DateTime DataCompra { get; set; }
        public double ValorTotal { get; set; }
        public virtual Consumidor Consumidor { get; set; }
        public virtual List<ItemCompra> ItemCompras { get; set; }
        public virtual Estabelecimento Estabelecimento { get; set; }
    }
}