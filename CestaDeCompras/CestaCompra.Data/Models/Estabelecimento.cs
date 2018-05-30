using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class estabelecimento
    {
        public int idestabelecimento { get; set; }
        public int idendereco { get; set; }
        public string nome { get; set; }
        public string unidade { get; set; }
        public int logo { get; set; }
    }
}