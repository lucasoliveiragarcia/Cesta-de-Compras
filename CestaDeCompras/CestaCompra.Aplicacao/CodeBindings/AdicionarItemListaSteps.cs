using CestaCompra.AcessoBD;
using CestaCompra.Data;
using CestaCompra.Data.Models;
using NUnit.Framework;
using System.Collections.Generic;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class AdicionarItemListaSteps
    {
        private ContextCestaBD contextCestaBD;
        AplListaCompra aplListaCompra;
        IRepositorioListaCompra repositorioListaCompra;
        IRepositorioConsumidor repositorioConsumidor;
        IRepositorioProduto repositorioProduto;
        Produto produtoPesquisa;
        List<Produto> lstPesquisaProduto;
        ItemListaCompra itemListaCompra;
        bool achouProduto;
        int IdListaCompra;

        readonly string nomeListaTeste = "Lista_Teste_Teste_1";
        readonly string nomeProdutoPesquisa = "Arroz";

        [Given(@"Eu seleciono a opção de adicionar produto em uma lista de compra\.")]
        public void DadoEuSelecionoAOpcaoDeAdicionarProdutoEmUmaListaDeCompra_()
        {
            this.contextCestaBD = new ContextCestaBD();
            aplListaCompra = new AplListaCompra();
            this.repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);
            this.repositorioProduto = new RepositorioProduto(contextCestaBD);
            produtoPesquisa = new Produto();
            lstPesquisaProduto = new List<Produto>();
            achouProduto = false;
            itemListaCompra = new ItemListaCompra();
            repositorioListaCompra = new RepositorioListaCompra(contextCestaBD);
            
            aplListaCompra.ExcluirListaCompra(
                repositorioListaCompra.Obter(lista => lista.Nome.Contains(nomeListaTeste)).IdListaCompra
                );

            this.IdListaCompra = aplListaCompra.CriarListaCompra(nomeListaTeste,1);
        }
        
        [Given(@"Eu pesquiso um nome de produto existente no banco\.")]
        public void DadoEuPesquisoUmNomeDeProdutoExistenteNoBanco_()
        {
            try
            {
                lstPesquisaProduto = aplListaCompra.GetProdutos(nomeProdutoPesquisa);
            }
            catch
            {
                achouProduto = false;
            }
        }
        
        [Given(@"O sistema retorna uma lista de itens que tenham aquele nome\.")]
        public void DadoOSistemaRetornaUmaListaDeItensQueTenhamAqueleNome_()
        {
            produtoPesquisa = repositorioProduto.Obter(prod => prod.Nome == nomeProdutoPesquisa);

            achouProduto = lstPesquisaProduto.Contains(produtoPesquisa);
        }
        
        [Given(@"Eu informo a quantidade (.*)\.")]
        public void DadoEuInformoAQuantidade_(int p0)
        {
            itemListaCompra.Quantidade = p0;
        }
        
        [When(@"eu não confirmo")]
        public void QuandoEuNaoConfirmo()
        {
            // Method intentionally left empty.
        }

        [Then(@"O item e incluido na lista de compras\.")]
        public void EntaoOItemEIncluidoNaListaDeCompras_()
        {
            Assert.True(achouProduto && aplListaCompra.AdicionarProdutoLista(1, produtoPesquisa.IdProduto) > 0);
        }
        
        [Then(@"o sistema não adiciona o produto")]
        public void EntaoOSistemaNaoAdicionaOProduto()
        {
            ListaCompra listaCompra = repositorioListaCompra.ObterPorId(this.IdListaCompra);
            Assert.True(!achouProduto && listaCompra.ItensListaCompra.Count == 0);
        }
    }
}
