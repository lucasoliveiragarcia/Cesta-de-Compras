using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class comprarealizada
    {
        public int idcomprarealizada { get; set; }
        public int idconsumidor { get; set; }
        public DateTime datacompra { get; set; }
        public double valortotal { get; set; }
    }
}