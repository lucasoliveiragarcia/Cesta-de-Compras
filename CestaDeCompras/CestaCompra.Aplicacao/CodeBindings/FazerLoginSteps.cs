using CestaCompra.AcessoBD;
using CestaCompra.Data;
using CestaCompra.Data.Models;
using NUnit.Framework;
using System;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao
{
    [Binding]
    public class FazerLoginSteps
    {
        private ContextCestaBD contextCestaBD;
        AplConsumidor aplConsumidor;
        IRepositorioConsumidor repositorioConsumidor;
        Consumidor consumidor;
        string login;
        string senha;
        bool loginSucesso;

        [Given]
        public void Dado_que_eu_consumidor_acesso_a_página_de_entrada_do_sistema()
        {
            this.contextCestaBD = new ContextCestaBD();
            aplConsumidor = new AplConsumidor();
            this.repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);
            consumidor = new Consumidor();
            loginSucesso = false;
        }
        
        [Given]
        public void Dado_eu_digito_o_meu_P0(string p0)
        {
            this.login = p0;
        }
        
        [Given]
        public void Dado_eu_digito_a_minha_P0(string p0)
        {
            this.senha = p0;
        }
        
        [Given]
        public void Dado_educouto()
        {
            consumidor = this.repositorioConsumidor.ObterPorLogin("educouto");
        }
        
        [Given]
        public void Dado_a_P0(string p0)
        {
            this.senha = p0;
        }
        
        [Given]
        public void Dado_o_P0_ou_a_P1_esteja_errada(string p0, string p1)
        {
            this.senha = consumidor.Senha + "1";
        }
        
        [When]
        public void Quando_eu_pressiono_o_botão_entrar()
        {
            try
            {
                aplConsumidor.VerificarAcesso(this.senha, consumidor.Senha);
                this.loginSucesso = true;
            }
            catch
            {
                this.loginSucesso = false;
            }
        }
        
        [When]
        public void Quando_Eu_pressiono_o_botão_entrar()
        {
            try
            {
                aplConsumidor.VerificarAcesso(this.senha, consumidor.Senha);
                this.loginSucesso = true;
            }
            catch
            {
                this.loginSucesso = false;
            }
        }
        
        [Then]
        public void Então_eu_acesso_a_página_do_menu_principal()
        {
            Dado_que_eu_consumidor_acesso_a_página_de_entrada_do_sistema();
        }
        
        [Then]
        public void Então_o_sistema_informa_dados_incorretos()
        {
            Assert.True(!loginSucesso);
        }
    }
}
