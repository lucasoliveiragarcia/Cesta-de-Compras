using System;

namespace CestaCompra.Data.Models
{
    public class Pessoa
    {
        public int IdPessoa { get; set; }
        public int IdEndereco { get; set; }
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
        public string Email { get; set; }
        public DateTime DataNascimento { get; set; }
        public virtual Consumidor Consumidor { get; set; }
        public virtual Endereco Endereco { get; set; }
    }
}