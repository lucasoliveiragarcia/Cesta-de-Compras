using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CestaCompra.AcessoBD;
using CestaCompra.Data;
using CestaCompra.Data.Models;

namespace CestaCompra.Aplicacao
{
    public class AplListaCompra
    {

        private readonly IRepositorioConsumidor repositorioConsumidor;
        private readonly IRepositorioPessoa repositorioPessoa;
        private readonly IRepositorioCidade repositorioCidade;
        private readonly IRepositorioListaCompra repositorioListaCompra;
        private readonly IRepositorioItemListaCompra repositorioItemListaCompra;
        public Pessoa pessoa;
        public Consumidor consumidor;
        public Endereco endereco;
        public Cidade cidade;
        public ListaCompra listaCompra;

        private ContextCestaBD contextCestaBD;

        public AplListaCompra()
        {
            this.contextCestaBD = new ContextCestaBD();
            this.repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);
            this.repositorioPessoa = new RepositorioPessoa(contextCestaBD);
            this.repositorioCidade = new RepositorioCidade(contextCestaBD);
            this.repositorioListaCompra = new RepositorioListaCompra(contextCestaBD);
            this.repositorioItemListaCompra = new RepositorioItemListaCompra(contextCestaBD);
            this.pessoa = new Pessoa();
            this.consumidor = new Consumidor();
            this.endereco = new Endereco();
            this.cidade = new Cidade();
            this.listaCompra = new ListaCompra();
        }

        public void SetContextDB(ContextCestaBD context)
        {
            this.contextCestaBD = context;
        }

        public void SetListaCompra(int IdListaCompra)
        {
            this.listaCompra = repositorioListaCompra.ObterPorId(IdListaCompra);
        }

        public DataSet ListarListasCompra(int idconsumidor)
        {
            return repositorioListaCompra.GetListaCompras(idconsumidor);
        }
        public DataSet ListarItemsListaCompra(int IdListaCompra)
        {
            return repositorioItemListaCompra.GetItemsListaCompra(IdListaCompra);
        }

        public int CriarListaCompra(string nomeLista)
        {
            this.ValidarCriacaoLista();

            if (string.IsNullOrEmpty(nomeLista))
                throw new InvalidOperationException("Informe o nome da lista");

            ListaCompra listaCompra = new ListaCompra();

            this.consumidor = repositorioConsumidor.ObterPorId(this.consumidor.IdConsumidor);
            
            listaCompra.Nome = nomeLista;
            listaCompra.Consumidor = this.consumidor;
            listaCompra.DataUltimaModificacao = DateTime.Now;

            repositorioListaCompra.Inserir(listaCompra);

            repositorioListaCompra.UnitOfWork.Commit();

            return listaCompra.IdListaCompra;
        }

        private void ValidarCriacaoLista()
        {
            if (this.consumidor.IdConsumidor == 0)
                throw new InvalidOperationException("Informe o consumidor");
        }
    }
}