using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class ConsultarMenorPrecoSteps
    {
        [Given(@"Eu estou acessando minha relação de listas de compras\.")]
        public void DadoEuEstouAcessandoMinhaRelacaoDeListasDeCompras_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu seleciono uma lista de compras")]
        public void DadoEuSelecionoUmaListaDeCompras()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"que eu não estou logado no sistema")]
        public void DadoQueEuNaoEstouLogadoNoSistema()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu seleciono consultar preços")]
        public void QuandoEuSelecionoConsultarPrecos()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"O sistema retorna a lista de menor preço total com os supermercados em ordem crescente de valor")]
        public void EntaoOSistemaRetornaAListaDeMenorPrecoTotalComOsSupermercadosEmOrdemCrescenteDeValor()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"não consigo acessar os preços atualizados\.")]
        public void EntaoNaoConsigoAcessarOsPrecosAtualizados_()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
