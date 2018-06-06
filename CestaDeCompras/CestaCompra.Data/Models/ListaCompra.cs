using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class ListaCompra
    {
        public int IdListaCompra { get; set; }
        public int IdConsumidor { get; set; }
        public string Nome { get; set; }
        public string DataUltimaModificacao { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}