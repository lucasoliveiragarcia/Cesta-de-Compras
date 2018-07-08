using CestaCompra.AcessoBD;
using CestaCompra.Data;
using CestaCompra.Data.Models;
using NUnit.Framework;
using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class CadastrarConsumidorSteps
    {
        private ContextCestaBD contextCestaBD;
        AplConsumidor aplConsumidor;
        IRepositorioConsumidor repositorioConsumidor;
        Consumidor consumidor;
        bool realizadoCadastro;

        [Given(@"eu acesso a opção de cadastro")]
        public void DadoEuAcessoAOpcaoDeCadastro()
        {
            this.contextCestaBD = new ContextCestaBD();
            aplConsumidor = new AplConsumidor();
            this.repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);
            realizadoCadastro = false;
        }
        
        [Given(@"O sistema exibe a tela de cadastramento de consumidor")]
        public void DadoOSistemaExibeATelaDeCadastramentoDeConsumidor()
        {
            consumidor = new Consumidor();
            realizadoCadastro = false;
        }

        //Eu informo <nome>, <sobrenome>, <datanasc>, <email>, <login>, <senha> 
        [Given(@"Eu informo (.*), (.*), (.*), (.*), (.*), (.*)")]
        public void DadoEuInformo(string p0, string p1, string p2, string p3, string p4, string p5)
        {
            aplConsumidor.pessoa.Nome = p0;
            aplConsumidor.pessoa.Sobrenome = p1;
            aplConsumidor.pessoa.DataNascimento = DateTime.Parse(p2);
            aplConsumidor.pessoa.Email = p3;
            aplConsumidor.consumidor.Login = p4;
            aplConsumidor.consumidor.Senha = p5;
        }
        
        [Given(@"eu nao preencho corretamente os dados solicitados")]
        public void DadoEuNaoPreenchoCorretamenteOsDadosSolicitados()
        {
            //Não implementado proprositalmente
        }
        
        [When(@"Eu confirmo o cadastro")]
        public void QuandoEuConfirmoOCadastro()
        {
            try
            {
                aplConsumidor.CadastrarConsumidor();
                realizadoCadastro = repositorioConsumidor.ObterPorLogin(aplConsumidor.consumidor.Login) != null;
            }
            catch
            {
                realizadoCadastro = false;
            }
        }
        
        [Then(@"o sistema conclui o cadastro e me habilita para usar o sistema\.")]
        public void EntaoOSistemaConcluiOCadastroEMeHabilitaParaUsarOSistema_()
        {
            Assert.True(realizadoCadastro);
        }
        
        [Then(@"o sistema retorna uma mensagem de entrada de dados incorreta")]
        public void EntaoOSistemaRetornaUmaMensagemDeEntradaDeDadosIncorreta()
        {
            Assert.True(!realizadoCadastro);
        }
    }
}
