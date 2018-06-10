using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class Medida
    {
        public int IdTipomedida { get; set; }
        public string Descricao { get; set; }
        public int TipoMedida { get; set; }
        public virtual List<Produto> Produtos { get; set; }
    }
}