using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CestaCompra.AcessoBD;
using CestaCompra.Data;
using CestaCompra.Data.Models;

namespace CestaCompra.Aplicacao
{
    public class AplConsumidor
    {
        private readonly string SALT = "$2a$10$rBV2JDeWW3.vKyeQcM8fFO";

        private IRepositorioConsumidor repositorioConsumidor;
        private IRepositorioEndereco repositorioEndereco;
        private IRepositorioPessoa repositorioPessoa;
        private IRepositorioCidade repositorioCidade;
        public Pessoa pessoa;
        public Consumidor consumidor;
        public Endereco endereco;
        public Cidade cidade;

        private readonly ContextCestaBD contextCestaBD = new ContextCestaBD();


        public AplConsumidor()
        {
            this.repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);
            this.repositorioEndereco = new RepositorioEndereco(contextCestaBD);
            this.repositorioPessoa = new RepositorioPessoa(contextCestaBD);
            this.repositorioCidade = new RepositorioCidade(contextCestaBD);
            this.pessoa = new Pessoa();
            this.consumidor = new Consumidor();
            this.endereco = new Endereco();
            this.cidade = new Cidade();
        }

        public void CadastrarConsumidor()
        {

            repositorioPessoa.Inserir(this.pessoa);
            repositorioPessoa.UnitOfWork.Commit();

            consumidor.Pessoa = pessoa;
            consumidor.Senha = BCrypt.Net.BCrypt.HashPassword(consumidor.Senha, SALT);

            repositorioConsumidor.Inserir(consumidor);
            repositorioConsumidor.UnitOfWork.Commit();
            
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