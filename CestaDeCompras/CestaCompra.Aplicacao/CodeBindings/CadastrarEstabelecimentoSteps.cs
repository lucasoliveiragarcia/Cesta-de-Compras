using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class CadastrarEstabelecimentoSteps
    {
        [Given(@"O administrador recebe a informação de novo supermercado\.")]
        public void DadoOAdministradorRecebeAInformacaoDeNovoSupermercado_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"O administrador verifica se o supermercado atende aos requisitos de inserção no “Cadastro de Supermercados”")]
        public void DadoOAdministradorVerificaSeOSupermercadoAtendeAosRequisitosDeInsercaoNoCadastroDeSupermercados()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"O administrador realiza o login como administrador")]
        public void DadoOAdministradorRealizaOLoginComoAdministrador()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"que o administrador esta na tela de menu do administrador")]
        public void DadoQueOAdministradorEstaNaTelaDeMenuDoAdministrador()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"o administrador seleciona (.*)")]
        public void QuandoOAdministradorSeleciona(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"O administrador insere todos os dados de cadastramento do supermercado\.")]
        public void QuandoOAdministradorInsereTodosOsDadosDeCadastramentoDoSupermercado_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"O administrador (.*) a inserção\.")]
        public void QuandoOAdministradorAInsercao_(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"O administrador muda o status do supermercado para “Ativo”  no ambiente de operação\.")]
        public void EntaoOAdministradorMudaOStatusDoSupermercadoParaAtivoNoAmbienteDeOperacao_()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
