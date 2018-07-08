using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class ConsultarListaCompraSteps
    {
        [Given(@"eu seleciono a opção minhas listas de compras")]
        public void DadoEuSelecionoAOpcaoMinhasListasDeCompras()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"eu escolho uma listaa")]
        public void QuandoEuEscolhoUmaListaa()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"o sistema exibe as listas cadastradas")]
        public void EntaoOSistemaExibeAsListasCadastradas()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"o sistema exibe os itens da lista \.")]
        public void EntaoOSistemaExibeOsItensDaLista_()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
