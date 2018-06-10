using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class PessoaAplicacaoSteps
    {
        [Given(@"Eu, usuario estou entrando no sistema")]
        public void GivenEuUsuarioEstouEntrandoNoSistema()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"eu informo o (.*)")]
        public void GivenEuInformoO(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"eu informo a (.*)")]
        public void GivenEuInformoA(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"Eu acesso o aplicativo “Cesta de Compras”")]
        public void GivenEuAcessoOAplicativoCestaDeCompras()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu pressiono o botão entrar")]
        public void WhenEuPressionoOBotaoEntrar()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu escolho a opção “Cadastrar”")]
        public void WhenEuEscolhoAOpcaoCadastrar()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"O sistema exibe a tela de cadastramento de usuário")]
        public void WhenOSistemaExibeATelaDeCadastramentoDeUsuario()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu preencho todos os dados solicitados")]
        public void WhenEuPreenchoTodosOsDadosSolicitados()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu forneço o meu e-mail e digito /defino  uma senha")]
        public void WhenEuFornecoOMeuE_MailEDigitoDefinoUmaSenha()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"Eu confirmo meu e-mail via link recebido no meu e-mail")]
        public void WhenEuConfirmoMeuE_MailViaLinkRecebidoNoMeuE_Mail()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"O sistema recebe a confirmação do e-mail")]
        public void WhenOSistemaRecebeAConfirmacaoDoE_Mail()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"Eu acesso o menu principal\.")]
        public void ThenEuAcessoOMenuPrincipal_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"O sistema conclui o cadastro e me habilita como usuário e eu posso começar a usar o aplicativo\.")]
        public void ThenOSistemaConcluiOCadastroEMeHabilitaComoUsuarioEEuPossoComecarAUsarOAplicativo_()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
