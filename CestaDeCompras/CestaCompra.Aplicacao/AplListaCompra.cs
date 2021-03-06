﻿using System;
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
        private readonly IRepositorioListaCompra repositorioListaCompra;
        private readonly IRepositorioProduto repositorioProduto;
        private readonly IRepositorioItemListaCompra repositorioItemListaCompra;
        public Pessoa pessoa;
        public Consumidor consumidor;
        public ListaCompra listaCompra;

        private ContextCestaBD contextCestaBD;

        public AplListaCompra()
        {
            this.contextCestaBD = new ContextCestaBD();
            this.repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);
            this.repositorioListaCompra = new RepositorioListaCompra(contextCestaBD);
            this.repositorioItemListaCompra = new RepositorioItemListaCompra(contextCestaBD);
            this.repositorioProduto = new RepositorioProduto(contextCestaBD);
            this.pessoa = new Pessoa();
            this.consumidor = new Consumidor();
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

        public int CriarListaCompra(string nomeLista, int idConsumidor)
        {
            this.consumidor = repositorioConsumidor.ObterPorId(idConsumidor);

            this.ValidarCamposCriacaoLista();

            this.ValidarQuantidadeDeListaConsumidor();

            if (string.IsNullOrEmpty(nomeLista))
                throw new InvalidOperationException("Informe o nome da lista");
            
            ListaCompra listaCompra = new ListaCompra
            {
                Nome = nomeLista,
                Consumidor = this.consumidor,
                DataUltimaModificacao = DateTime.Now
            };

            repositorioListaCompra.Inserir(listaCompra);

            repositorioListaCompra.UnitOfWork.Commit();

            return listaCompra.IdListaCompra;
        }

        public void ExcluirListaCompra(int IdListaCompra)
        {
            List<ItemListaCompra> itensLista = repositorioListaCompra.ObterPorId(IdListaCompra).ItensListaCompra.ToList();

            foreach(ItemListaCompra itemLista in itensLista)
            {
                repositorioItemListaCompra.Excluir(repositorioItemListaCompra.ObterPorId(itemLista.IdItemListaCompra));
                repositorioItemListaCompra.UnitOfWork.Commit();
            }

            repositorioListaCompra.Excluir(repositorioListaCompra.ObterPorId(IdListaCompra));
            repositorioListaCompra.UnitOfWork.Commit();
        }

        private void ValidarQuantidadeDeListaConsumidor()
        {
            if(this.consumidor.Nivel == 1 && this.consumidor.ListasCompra.Count > 1)
            {
                throw new InvalidOperationException("Só é permitido a adição de 1 lista para consumidores do nível 1.");
            }
        }

        public int AdicionarProdutoLista(int IdListaCompra, int IdProduto)
        {
            if (IdListaCompra == 0)
                throw new ArgumentException("Informe a lista de compra");

            if (IdProduto == 0)
                throw new ArgumentException("Informe o produto");
            
            ItemListaCompra itemListaCompra = new ItemListaCompra
            {
                ListaCompra = repositorioListaCompra.ObterPorId(IdListaCompra),
                Produto = repositorioProduto.ObterPorId(IdProduto)
            };

            repositorioItemListaCompra.Inserir(itemListaCompra);

            repositorioItemListaCompra.UnitOfWork.Commit();

            return itemListaCompra.IdItemListaCompra;
        }

        public int RemoverItemListaCompra(int IdListaCompra, int IdItemListaCompra)
        {
            if (IdListaCompra == 0)
                throw new ArgumentException("Informe a lista de compra");

            if (IdItemListaCompra == 0)
                throw new ArgumentException("Informe o produto");

            ItemListaCompra itemListaCompra = repositorioItemListaCompra.ObterPorId(IdItemListaCompra);

            repositorioItemListaCompra.Excluir(itemListaCompra);

            repositorioItemListaCompra.UnitOfWork.Commit();

            return itemListaCompra.IdItemListaCompra;
        }

        public void AtualizarQuantidadeItemListaCompra(int IdListaCompra, int  idItemListaCompra, int quantidade)
        {
            if (IdListaCompra == 0)
                throw new ArgumentException("Informe a lista de compra");

            if (idItemListaCompra == 0)
                throw new ArgumentException("Informe o produto");

            ItemListaCompra itemListaCompra = repositorioItemListaCompra.ObterPorId(idItemListaCompra);

            if(itemListaCompra == null || itemListaCompra.IdItemListaCompra == 0)
                throw new InvalidOperationException("Item não encontrado!");

            itemListaCompra.Quantidade = quantidade;
            
            repositorioItemListaCompra.Atualizar(itemListaCompra);

            repositorioItemListaCompra.UnitOfWork.Commit();
        }

        private void ValidarCamposCriacaoLista()
        {
            if (this.consumidor.IdConsumidor == 0)
                throw new InvalidOperationException("Informe o consumidor");
        }

        public List<Produto> GetProdutos(string pesquisar)
        {
            return this.repositorioProduto.PesquisarProduto(pesquisar);
        }
    }
}