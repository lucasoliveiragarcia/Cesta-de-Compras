using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class produto
    {
        public int idproduto { get; set; }
        public int idmarca { get; set; }
        public int idtipomedida { get; set; }
        public int unidade { get; set; }
        public string nome { get; set; }
        public double valido { get; set; }
    }
}