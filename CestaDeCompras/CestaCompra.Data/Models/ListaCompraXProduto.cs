using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class listacompraxproduto
    {
        public int idlistacompraxproduto { get; set; }
        public int idproduto { get; set; }
        public int idlistacompra { get; set; }
        public int quantidade { get; set; }

    }
}