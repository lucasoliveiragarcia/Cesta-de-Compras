using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class SupermercadoAplicacaoSteps
    {
        [Given(@"O sistema tenha sido previamente carregado com a Lista de Start-up de Supermercados\.")]
        public void GivenOSistemaTenhaSidoPreviamenteCarregadoComAListaDeStart_UpDeSupermercados_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"O administrador recebe a informação de novo supermercado\.")]
        public void WhenOAdministradorRecebeAInformacaoDeNovoSupermercado_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"O administrador verifica se o supermercado atende aos requisitos de inserção no “Cadastro de Supermercados”")]
        public void WhenOAdministradorVerificaSeOSupermercadoAtendeAosRequisitosDeInsercaoNoCadastroDeSupermercados()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"O administrador insere todos os dados de cadastramento do supermercado\.")]
        public void WhenOAdministradorInsereTodosOsDadosDeCadastramentoDoSupermercado_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"O administrador verifica através de testes se o supermercado esta integrado ao sistema\.")]
        public void WhenOAdministradorVerificaAtravesDeTestesSeOSupermercadoEstaIntegradoAoSistema_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"O administrador muda o status do supermercado para “Ativo”  no ambiente de operação\.")]
        public void ThenOAdministradorMudaOStatusDoSupermercadoParaAtivoNoAmbienteDeOperacao_()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
