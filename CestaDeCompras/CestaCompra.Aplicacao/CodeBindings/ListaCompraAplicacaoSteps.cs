using System;
using TechTalk.SpecFlow;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using NUnit.Framework;



namespace CestaCompra.Aplicacao
{
    [Binding]
    public class ListaCompraAplicacaoSteps
    {
        IWebDriver driver;

        [Given(@"Eu estou no menu principal")]
        public void GivenEuEstouNoMenuPrincipal()
        {
            //ScenarioContext.Current.Pending();
            driver=new ChromeDriver();
            driver.Url = "https://www.uol.com.br/";
        }
        
        [Given(@"Eu seleciono a opção minhas listas de compras")]
        public void GivenEuSelecionoAOpcaoMinhasListasDeCompras()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu seleciono a opção de criar lista")]
        public void GivenEuSelecionoAOpcaoDeCriarLista()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu digito o (.*)")]
        public void GivenEuDigitoO(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu adiciono (.*)")]
        public void GivenEuAdiciono(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu acessei a inserção de produtos para uma lista específica\.")]
        public void GivenEuAcesseiAInsercaoDeProdutosParaUmaListaEspecifica_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu digitei um nome de produto existente no banco\.")]
        public void GivenEuDigiteiUmNomeDeProdutoExistenteNoBanco_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"O sistema retorna uma lista de itens que tenham aquele nome\.")]
        public void GivenOSistemaRetornaUmaListaDeItensQueTenhamAqueleNome_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu seleciono o produto correto que desejo incluir\.")]
        public void GivenEuSelecionoOProdutoCorretoQueDesejoIncluir_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu seleciono a quantidade desejada\.")]
        public void GivenEuSelecionoAQuantidadeDesejada_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu estou logado no Sistema Cesta de Compras")]
        public void GivenEuEstouLogadoNoSistemaCestaDeCompras()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu estou acessando minha relação de listas de compras\.")]
        public void GivenEuEstouAcessandoMinhaRelacaoDeListasDeCompras_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu pressiono Avançar")]
        public void WhenEuPressionoAvancar()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu pressiono Confirmar")]
        public void WhenEuPressionoConfirmar()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu seleciono a opção minhas listas de compras")]
        public void WhenEuSelecionoAOpcaoMinhasListasDeCompras()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu seleciono a lista desejada")]
        public void WhenEuSelecionoAListaDesejada()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"A lista é criada\.")]
        public void ThenAListaECriada_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"O item é incluído na lista de compras\.")]
        public void ThenOItemEIncluidoNaListaDeCompras_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"Eu acesso a relação de  listas existentes\.")]
        public void ThenEuAcessoARelacaoDeListasExistentes_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"O sistema retorna o supermercado no qual a lista completa totaliza o menor preço\.")]
        public void ThenOSistemaRetornaOSupermercadoNoQualAListaCompletaTotalizaOMenorPreco_()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
