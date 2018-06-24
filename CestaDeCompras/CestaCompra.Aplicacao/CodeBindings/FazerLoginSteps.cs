using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class FazerLoginSteps
    {
        [Given(@"que eu consumidor acesso a página de entrada do sistema")]
        public void DadoQueEuConsumidorAcessoAPaginaDeEntradaDoSistema()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"eu digito o  meu (.*)")]
        public void DadoEuDigitoOMeu(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"eu digito a  minha (.*)")]
        public void DadoEuDigitoAMinha(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"o rodrigues\.(.*) esta correto")]
        public void DadoORodrigues_EstaCorreto(int p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"a '(.*)' esta correta")]
        public void DadoAEstaCorreta(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"o (.*) ou a (.*) esteja errada")]
        public void DadoOOuAEstejaErrada(string p0, string p1)
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"eu pressiono o botão entrar")]
        public void QuandoEuPressionoOBotaoEntrar()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"eu acesso a página do menu principal\.")]
        public void EntaoEuAcessoAPaginaDoMenuPrincipal_()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"o sistema informa dados incorretos")]
        public void EntaoOSistemaInformaDadosIncorretos()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
