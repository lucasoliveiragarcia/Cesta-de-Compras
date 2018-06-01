using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class Consumidor
    {
        public int IdConsumidor { get; set; }
        public int IdPessoa { get; set; }
        public int DataCadastro { get; set; }
        public int Admnistrador { get; set; }
        public string Login { get; set; }
        public string Senha { get; set; }
        public string Nivel { get; set; }
    }
}