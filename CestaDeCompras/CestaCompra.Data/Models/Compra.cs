using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class compra
    {
        public int idcompra { get; set; }
        public int idcomprarealizada { get; set; }
        public int idproduto { get; set; }
        public int idestabelecimento { get; set; }
        public string quantidade { get; set; }
        public double preco { get; set; }
        public double valido { get; set; }
        
    }
}