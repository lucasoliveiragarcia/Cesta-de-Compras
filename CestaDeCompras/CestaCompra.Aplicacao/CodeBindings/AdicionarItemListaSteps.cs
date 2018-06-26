using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class AdicionarItemListaSteps
    {
        [Given(@"Eu acessei uma lista de compras específica\.")]
        public void DadoEuAcesseiUmaListaDeComprasEspecifica_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu seleciono (.*) produto\.")]
        public void DadoEuSelecionoProduto_(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu pesquiso um nome de produto existente no banco\.")]
        public void DadoEuPesquisoUmNomeDeProdutoExistenteNoBanco_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"O sistema retorna uma lista de itens que tenham aquele nome\.")]
        public void DadoOSistemaRetornaUmaListaDeItensQueTenhamAqueleNome_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu seleciono a (.*) desejada\.")]
        public void DadoEuSelecionoADesejada_(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"eu não (.*)")]
        public void QuandoEuNao(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"O item é incluído na lista de compras\.")]
        public void EntaoOItemEIncluidoNaListaDeCompras_()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
