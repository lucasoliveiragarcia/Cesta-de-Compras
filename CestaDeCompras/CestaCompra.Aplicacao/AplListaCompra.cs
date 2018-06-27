using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CestaCompra.AcessoBD;
using CestaCompra.Data;
using CestaCompra.Data.Models;

namespace CestaCompra.Aplicacao
{
    public class AplListaCompra
    {
        private readonly string SALT = "$2a$10$rBV2JDeWW3.vKyeQcM8fFO";

        private IRepositorioConsumidor repositorioConsumidor;
        private IRepositorioEndereco repositorioEndereco;
        private IRepositorioPessoa repositorioPessoa;
        private IRepositorioCidade repositorioCidade;
        private IRepositorioListaCompra repositorioListaCompra;
        public Pessoa pessoa;
        public Consumidor consumidor;
        public Endereco endereco;
        public Cidade cidade;

        private readonly ContextCestaBD contextCestaBD = new ContextCestaBD();


        public AplListaCompra()
        {
            this.repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);
            this.repositorioEndereco = new RepositorioEndereco(contextCestaBD);
            this.repositorioPessoa = new RepositorioPessoa(contextCestaBD);
            this.repositorioCidade = new RepositorioCidade(contextCestaBD);
            this.repositorioListaCompra = new RepositorioListaCompra(contextCestaBD);
            this.pessoa = new Pessoa();
            this.consumidor = new Consumidor();
            this.endereco = new Endereco();
            this.cidade = new Cidade();
        }
        
        public DataSet ListarListasCompra(int idconsumidor)
        {
            return repositorioListaCompra.GetListaCompras(idconsumidor);
        }
        
        
        private void VerificarAcesso(string senhaTela, string senhaEncriptada)
        {
            if (!BCrypt.Net.BCrypt.Verify(senhaTela, senhaEncriptada))
            {
                throw new Exception("Senha incorreta!");
            }
        }
    }
}