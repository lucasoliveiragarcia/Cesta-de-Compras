using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class RealizarCompraSteps
    {
        [Given(@"Eu acesso minhas listas de compras")]
        public void DadoEuAcessoMinhasListasDeCompras()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu seleciono a lista desejada")]
        public void DadoEuSelecionoAListaDesejada()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu seleciono o (.*)")]
        public void DadoEuSelecionoO(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu adiciono um produto")]
        public void DadoEuAdicionoUmProduto()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"O sistema permite que eu inclua, altere quantidade e preço ou remova itens da lista para realizar a compra\.")]
        public void DadoOSistemaPermiteQueEuIncluaAltereQuantidadeEPrecoOuRemovaItensDaListaParaRealizarACompra_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu confirmo a compra")]
        public void QuandoEuConfirmoACompra()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"que eu eu não confirmo a compra")]
        public void QuandoQueEuEuNaoConfirmoACompra()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"a compra é registrada\.")]
        public void EntaoACompraERegistrada_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"O sistema não gera uma nova compra e não registra no banco de dados")]
        public void EntaoOSistemaNaoGeraUmaNovaCompraENaoRegistraNoBancoDeDados()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
