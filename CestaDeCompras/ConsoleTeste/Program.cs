using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using CestaCompra.AcessoBD;
using CestaCompra.Aplicacao;
using CestaCompra.Data;
using CestaCompra.Data.Configuracao;
using CestaCompra.Data.Models;

namespace ConsoleTeste
{
    class Program
    {
        static void Main(string[] args)
        {
            //var kernel = new StandardKernel();
            // kernel.Load(Assembly.GetExecutingAssembly());

            //PessoaAplicacao pessoaAplicacao = new PessoaAplicacao();
            //Pessoa pessoa = new Pessoa
            //{
            //    Nome = "Eduardo",
            //    Sobrenome = "Couto",
            //    Email = "eduardo@email.com",
            //    IdPessoa = 1,
            //    DataNascimento = DateTime.Parse("2018/05/31")

            //};

            //pessoaAplicacao.InserirPessoa(pessoa);

            //Console.WriteLine("Registro Adicionado com sucesso!");
            //Console.WriteLine("" + pessoa.IdPessoa);

            //Consumidor consumidor = new Consumidor();
            //consumidor.Login = "Eduardo";
            //consumidor.Senha = "123";
            //consumidor.DataCadastro = DateTime.Now;
            //consumidor.Nivel = 1;
            //consumidor.Pessoa = pessoa;

            //repositorioConsumidor.Inserir(consumidor);
            //repositorioConsumidor.UnitOfWork.Commit();

            ContextCestaBD cestaCompraDB = ContextCestaBD.Create();
            
            IRepositorioConsumidor repositorioConsumidor = new RepositorioConsumidor(cestaCompraDB);
  
            var consumidores = repositorioConsumidor.ObterTodos();
            var listConsumidor = new List<Consumidor>();

            foreach (var _consumidor in consumidores) //keywords = List<string>
            {
                if (_consumidor.Login == "educouto")
                    listConsumidor.Add(_consumidor);
            }       
        }
    }
    //public class DI : NinjectModule
    //{
    //    public override void Load()
    //    {
    //        Bind<IUnitOfWork>().To<ContextCestaBD>();

    //    }
    //}
}
