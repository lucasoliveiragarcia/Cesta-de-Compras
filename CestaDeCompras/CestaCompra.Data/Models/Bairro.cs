using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class Bairro
    {
        public int IdBairro { get; set; }
        public string Nome { get; set; }
        public int IdCidade { get; set; }
        public object Cidade { get; internal set; }
    }
}