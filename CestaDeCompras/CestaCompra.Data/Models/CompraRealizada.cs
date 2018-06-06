using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class CompraRealizada
    {
        public int IdComprarealizada { get; set; }
        public int IdUsuario { get; set; }
        public DateTime DataCompra { get; set; }
        public double ValorTotal { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}