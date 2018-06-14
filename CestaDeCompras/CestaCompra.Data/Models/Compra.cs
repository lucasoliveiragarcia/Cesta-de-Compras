using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

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