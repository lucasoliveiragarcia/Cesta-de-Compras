using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class produtosupermercado
    {
        public int idprodutosupermercado { get; set; }
        public int idestabelecimento { get; set; }
        public int idproduto { get; set; }
        public string preco { get; set; }
    }
}