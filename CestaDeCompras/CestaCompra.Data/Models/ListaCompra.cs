using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class listacompra
    {
        public int idlistacompra { get; set; }
        public int idconsumidor { get; set; }
        public string nome { get; set; }
        public string dataultimamodificacao { get; set; }
    }
}