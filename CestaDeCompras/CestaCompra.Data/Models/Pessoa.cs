using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    
    public class pessoa
    {
        public int idpessoa { get; set; }
        public int idendereco { get; set; }
        public string email { get; set; }
        public DateTime datanascimento { get; set; }
        public string nome { get; set; }
        public string sobrenome { get; set; }
    }
}