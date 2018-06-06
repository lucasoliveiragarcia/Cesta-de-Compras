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
        public int IdComprarealizada { get; set; }
        public int IdProduto { get; set; }
        public int IdEstabelecimento { get; set; }
        public string Quantidade { get; set; }
        public double Preco { get; set; }
        public int Valido { get; set; }
        
    }
}