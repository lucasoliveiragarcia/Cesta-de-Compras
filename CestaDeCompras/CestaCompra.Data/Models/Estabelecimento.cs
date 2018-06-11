using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class Estabelecimento
    {
        public int IdEstabelecimento { get; set; }
        public int IdEndereco { get; set; }
        public string Nome { get; set; }
        public string Unidade { get; set; }
        public int Logo { get; set; }
        public virtual Endereco Endereco { get; set; }
        public virtual Compra Compra { get; set; }
        public virtual List<EstabelecimentoProduto> EstabelecimentoProduto { get; set; }
        public virtual List<ItemCompra> ItensCompra { get; set; }
    }
}