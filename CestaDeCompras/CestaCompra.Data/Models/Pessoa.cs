using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    [Table("pessoa")]
    public class Pessoa
    {
        public int IdPessoa { get; set; }
        public int IdEndereco { get; set; }
        public string Email { get; set; }
        public DateTime DataNascimento { get; set; }
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
    }
}