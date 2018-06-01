using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class consumidor
    {
        public int idconsumidor { get; set; }
        public int idpessoa { get; set; }
        public int datacadastro { get; set; }
        public int admnistrador { get; set; }
        public string login { get; set; }
        public string senha { get; set; }
        public string nivel { get; set; }
    }
}