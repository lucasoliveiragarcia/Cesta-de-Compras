using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class Cidade
    {

    
        public int IdCidade { get; set; }
        public int IdEstado { get; set; }
        public string Nome { get; set; }
        public virtual Estado Estado { get; set; }
        public virtual Bairro Bairro { get; set; }
    }
}