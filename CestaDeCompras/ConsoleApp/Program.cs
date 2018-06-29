using CestaCompra.AcessoBD;
using CestaCompra.Data;
using CestaCompra.Data.Models;
using System;

namespace ConsoleApp
{
    public class Program
    {
        static void Main(string[] args)
        {
            ContextCestaBD contextCestaBD = new ContextCestaBD();
            ListaCompra listaCompra = new ListaCompra();

            RepositorioConsumidor repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);

            Consumidor consumidor = repositorioConsumidor.ObterPorId(1);
            
            listaCompra.Nome = "Teste";
            listaCompra.Consumidor = consumidor;
            listaCompra.DataUltimaModificacao = DateTime.Now;

            consumidor.ListasCompra.Add(listaCompra);

            contextCestaBD.SaveChanges();

            //repositorioConsumidor.UnitOfWork.Commit();

            //repositorioListaCompra.UnitOfWork = repositorioConsumidor.UnitOfWork;
            //repositorioListaCompra.Inserir(listaCompra);

            //repositorioListaCompra.UnitOfWork.Commit();
        }
    }
}
