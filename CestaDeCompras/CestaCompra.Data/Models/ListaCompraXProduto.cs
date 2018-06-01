using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class ListaCompraXProduto
    {
        public int IdListaCompraxproduto { get; set; }
        public int IdProduto { get; set; }
        public int IdListacompra { get; set; }
        public int Quantidade { get; set; }

    }
}