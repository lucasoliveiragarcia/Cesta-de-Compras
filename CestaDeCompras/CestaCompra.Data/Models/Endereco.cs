using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class endereco
    {
        public int idendereco { get; set; }
        public string cep { get; set; }
        public string numero { get; set; }
        public string complemento { get; set; }
        public string logradouro { get; set; }

    }
}