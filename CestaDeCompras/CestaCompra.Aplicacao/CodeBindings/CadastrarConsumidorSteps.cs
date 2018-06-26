using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class CadastrarConsumidorSteps
    {
        [Given(@"eu acesso o site (.*)")]
        public void DadoEuAcessoOSite(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"eu escolho a opção (.*)")]
        public void DadoEuEscolhoAOpcao(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"O sistema exibe a tela de cadastramento de consumidor")]
        public void DadoOSistemaExibeATelaDeCadastramentoDeConsumidor()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu preencho todos os dados solicitados\.")]
        public void DadoEuPreenchoTodosOsDadosSolicitados_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu informo (.*), (.*), (.*), (.*), (.*),(.*),(.*),(.*),(.*),(.*),(.*)")]
        public void DadoEuInformo(string p0, string p1, string p2, string p3, string p4, string p5, string p6, string p7, string p8, string p9, string p10)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"eu não preencho corretamente os dados solicitados")]
        public void DadoEuNaoPreenchoCorretamenteOsDadosSolicitados()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu confirmo pressionando (.*)")]
        public void QuandoEuConfirmoPressionando(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"o sistema conclui o cadastro e me habilita como usuário e eu posso começar a usar o aplicativo\.")]
        public void EntaoOSistemaConcluiOCadastroEMeHabilitaComoUsuarioEEuPossoComecarAUsarOAplicativo_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"o sistema retorna dados incorretos")]
        public void EntaoOSistemaRetornaDadosIncorretos()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
