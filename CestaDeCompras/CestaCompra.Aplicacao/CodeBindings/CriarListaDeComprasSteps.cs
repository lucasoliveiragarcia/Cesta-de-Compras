using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class CriarListaDeComprasSteps
    {
        [Given(@"Eu estou no (.*)")]
        public void DadoEuEstouNo(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu seleciono a opção (.*)")]
        public void DadoEuSelecionoAOpcao(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu pressiono (.*)")]
        public void DadoEuPressiono(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"que eu não adicionei nenhum item na lista")]
        public void DadoQueEuNaoAdicioneiNenhumItemNaLista()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu pressiono (.*)")]
        public void QuandoEuPressiono(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"o sistema retorna ""(.*)""")]
        public void EntaoOSistemaRetorna(string p0)
        {
            ScenarioContext.Current.Pending();
        }
    }
}
