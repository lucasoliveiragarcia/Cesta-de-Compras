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

        private readonly IRepositorioConsumidor repositorioConsumidor;
        private readonly IRepositorioPessoa repositorioPessoa;
        public Pessoa pessoa;
        public Consumidor consumidor;
        public Endereco endereco;
        public Cidade cidade;

        private readonly ContextCestaBD contextCestaBD = new ContextCestaBD();
        
        public AplConsumidor()
        {
            this.repositorioConsumidor = new RepositorioConsumidor(contextCestaBD);
            this.repositorioPessoa = new RepositorioPessoa(contextCestaBD);
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

        public Consumidor GetConsumidorPorId(string idConsumidor)
        {
            return GetConsumidorPorId(Convert.ToInt32(idConsumidor));
        }

        public Consumidor GetConsumidorPorId(int idConsumidor)
        {
            return repositorioConsumidor.ObterPorId(idConsumidor);
        }

        public void VerificarAcesso(string senhaTela, string senhaEncriptada)
        {
            if (!BCrypt.Net.BCrypt.Verify(senhaTela, senhaEncriptada))
            {
                throw new Exception("Senha incorreta!");
            }
        }
    }
}