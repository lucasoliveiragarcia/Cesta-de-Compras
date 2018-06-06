using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CestaCompra.Aplicacao;
using CestaCompra.Data.Models;

namespace ConsoleTeste
{
    class Program
    {
        static void Main(string[] args)
        {
            PessoaAplicacao pessoaAplicacao = new PessoaAplicacao();
            Pessoa pessoa = new Pessoa
            {
                Nome = "Eduardo",
                Sobrenome = "Couto",
                Email = "eduardo@email.com",
                IdPessoa = 1,
                DataNascimento = DateTime.Parse("2018/05/31")
            };

            pessoaAplicacao.InserirPessoa(pessoa);
            
            Console.WriteLine("Registro Adicionado com sucesso!");
            Console.WriteLine("" + pessoa.IdPessoa);
        }
    }
}
