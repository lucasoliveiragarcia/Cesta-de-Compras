using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class Estado
    {
        public int IdEstado { get; set; }
        public int IdPais { get; set; }
        public string Nome { get; set; }
        public virtual List<Cidade> Cidades { get; set; }
        public virtual Pais Pais { get; set; }
    }
}