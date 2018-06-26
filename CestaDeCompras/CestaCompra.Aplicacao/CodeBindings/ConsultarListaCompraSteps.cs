using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class ConsultarListaCompraSteps
    {
        [Given(@"Eu estou logado no Sistema Cesta de Compras")]
        public void DadoEuEstouLogadoNoSistemaCestaDeCompras()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"eu seleciono a opção minhas listas de compras")]
        public void DadoEuSelecionoAOpcaoMinhasListasDeCompras()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"o sistema exibe as minhas listas")]
        public void DadoOSistemaExibeAsMinhasListas()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"eu seleciono uma lista")]
        public void DadoEuSelecionoUmaLista()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu (.*) a lista")]
        public void QuandoEuALista(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"o sistema exibe a lista de itens \.")]
        public void EntaoOSistemaExibeAListaDeItens_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"o sistema permanece aguardando a confirmação")]
        public void EntaoOSistemaPermaneceAguardandoAConfirmacao()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
