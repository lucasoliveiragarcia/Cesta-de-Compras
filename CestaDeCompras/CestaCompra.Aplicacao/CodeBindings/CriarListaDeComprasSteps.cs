using CestaCompra.AcessoBD;
using CestaCompra.Data;
using NUnit.Framework;
using TechTalk.SpecFlow;

namespace CestaCompra.Aplicacao.CodeBindings
{
    [Binding]
    public class CriarListaDeComprasSteps
    {
        private ContextCestaBD contextCestaBD;
        AplListaCompra aplListaCompra;
        IRepositorioConsumidor repositorioConsumidor;
        string nomeLista;
        int IdListaCompra;

        [Given(@"Eu estou na tela de listas de compras")]
        public void DadoEuEstouNaTelaDeListasDeCompras()
        {
            this.contextCestaBD = new ContextCestaBD();
            aplListaCompra = new AplListaCompra();
            this.repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);
        }
        
        [Given(@"Eu seleciono a opção de criar lista")]
        public void DadoEuSelecionoAOpcaoDeCriarLista()
        {
            nomeLista = "";
            IdListaCompra = 0;
            aplListaCompra.consumidor = repositorioConsumidor.ObterPorLogin("educouto");
        }
        
        [Given(@"Eu digito o ‘Lista do mês’")]
        public void DadoEuDigitoOListaDoMes()
        {
            nomeLista = "Lista do mês";

        }

        [Given(@"Eu digito o ‘Churrasco’")]
        public void DadoEuDigitoOChurrasco()
        {
            nomeLista = "Churrasco";
        }
        
        [Given(@"que eu não informei o nome da lista")]
        public void DadoQueEuNaoInformeiONomeDaLista()
        {
            this.contextCestaBD = new ContextCestaBD();
            aplListaCompra = new AplListaCompra();
            this.repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);
            aplListaCompra.consumidor = repositorioConsumidor.ObterPorLogin("educouto");

            IdListaCompra = 0;
            nomeLista = "";
        }
        
        [When(@"Eu pressiono Confirmar")]
        public void QuandoEuPressionoConfirmar()
        {
            try
            {
                IdListaCompra = aplListaCompra.CriarListaCompra(nomeLista, aplListaCompra.consumidor.IdConsumidor);
            }
            catch
            {
                IdListaCompra = 0;
            }
        }
        
        [Then(@"A lista é criada\.")]
        public void EntaoAListaECriada_()
        {
            Assert.True(IdListaCompra > 0);
        }
        
        [Then(@"o sistema retorna uma mensagem de erro")]
        public void EntaoOSistemaRetornaUmaMensagemDeErro()
        {
            Assert.True(IdListaCompra == 0);
        }
    }
}
