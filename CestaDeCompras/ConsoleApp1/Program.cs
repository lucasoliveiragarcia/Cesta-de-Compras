using CestaCompra.AcessoBD;
using CestaCompra.Data;
using CestaCompra.Data.Models;
using System;

namespace ConsoleApp1
{
    public class Program
    {
        public static void Main(string[] args)
        {

            testeSemRepositorioGenerico();

            ContextCestaBD contextCestaBD = new ContextCestaBD();

            RepositorioConsumidor repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);
            RepositorioListaCompra repositorioListaCompra = new RepositorioListaCompra(contextCestaBD);

            Consumidor consumidor = repositorioConsumidor.ObterPorId(1);

            ListaCompra listaCompra = new ListaCompra();
            listaCompra.Nome = "Teste";
            listaCompra.Consumidor = consumidor;
            listaCompra.DataUltimaModificacao = DateTime.Now;

            repositorioListaCompra.Inserir(listaCompra);
            repositorioListaCompra.UnitOfWork.Commit();
            
        }

        private static void testeSemRepositorioGenerico()
        {
            ContextCestaBD contextCestaBD = new ContextCestaBD();

            Consumidor consumidor = contextCestaBD.Consumidor.Find(1);

            consumidor.Nivel = 5;
            
            ListaCompra listaCompra = new ListaCompra();

            listaCompra.Consumidor = consumidor;
            listaCompra.DataUltimaModificacao = DateTime.Now;
            listaCompra.Nome = "TESTETESTETESTE";

            contextCestaBD.ListaCompra.Add(listaCompra);

            contextCestaBD.SaveChanges();
        }
    }
}
