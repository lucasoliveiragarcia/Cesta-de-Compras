using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CestaCompra.Aplicacao.DTO
{
    class ConsumidorDto
    {
        public int IdPessoa { get; set; }
        public string Email { get; set; }
        public DateTime DataNascimento { get; set; }
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
        public int IdConsumidor { get; set; }
        public DateTime DataCadastro { get; set; }
        public double Admnistrador { get; set; }
        public string Login { get; set; }
        public string Senha { get; set; }
        public double Nivel { get; set; }
        public int IdEndereco { get; set; }
        public int IdCidade { get; set; }
        public string Cep { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Logradouro { get; set; }
    }
}
