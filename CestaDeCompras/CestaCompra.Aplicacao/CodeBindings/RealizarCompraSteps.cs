using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class RealizarCompraSteps
    {
        [Given(@"Eu acesso (.*)")]
        public void DadoEuAcesso(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu seleciono a lista desejada (.*)")]
        public void DadoEuSelecionoAListaDesejada(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"O sistema sugere a cidade de residência e/ou eu posso selecionar outra cidade (.*)")]
        public void DadoOSistemaSugereACidadeDeResidenciaEOuEuPossoSelecionarOutraCidade(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"O sistema retorna (.*) com os supermercados com o menor preço total em ordem crescente\.")]
        public void DadoOSistemaRetornaComOsSupermercadosComOMenorPrecoTotalEmOrdemCrescente_(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu seleciono o (.*)")]
        public void DadoEuSelecionoO(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu  pressiono (.*)")]
        public void DadoEuPressiono(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"O sistema permite que eu inclua, altere quantidade e preço ou remova itens da lista para realizar a compra\.")]
        public void DadoOSistemaPermiteQueEuIncluaAltereQuantidadeEPrecoOuRemovaItensDaListaParaRealizarACompra_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu (.*) a compra")]
        public void QuandoEuACompra(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"que eu eu não (.*) a compra")]
        public void QuandoQueEuEuNaoACompra(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"O sistema gera uma (.*) e registra no banco de dados \.")]
        public void EntaoOSistemaGeraUmaERegistraNoBancoDeDados_(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"O sistema não gera uma (.*) e não registra no banco de dados")]
        public void EntaoOSistemaNaoGeraUmaENaoRegistraNoBancoDeDados(string p0)
        {
            ScenarioContext.Current.Pending();
        }
    }
}
