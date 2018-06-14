using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class EstabelecimentoProduto
    {
        public int IdEstabelecimentoProduto { get; set; }        
        public double Preco { get; set; }
        public virtual Estabelecimento Estabelecimento { get; set; }
        public virtual Produto Produto { get; set; }
    }
}