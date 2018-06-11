using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CestaCompra.AcessoBD;
using CestaCompra.Data.Models;

namespace CestaCompra.Aplicacao
{
    public class ConsumidorAplicacao
    {
        private PessoaRepositorio pessoaRepositorio;

        public ConsumidorAplicacao()
        {
            this.pessoaRepositorio = new PessoaRepositorio();
        }

        public Pessoa ObterPessoaPorId(int id)
        {
            return this.pessoaRepositorio.ObterPessoaPorId(id);
        }

        public List<Pessoa> ObterTodosOsPessoas()
        {
            return this.pessoaRepositorio.ObterTodosOsPessoas();
        }

        public Pessoa ObterPessoaPorEmail(String email)
        {
            return this.pessoaRepositorio.ObterPessoaPorEmail(email);
        }

        //public Pessoa ObterPessoaPorEmailESenha(String email, String senha)
        //{
        //    return this.pessoaRepositorio.ObterPessoaPorEmailESenha(email, senha);
        //}

        //public Boolean VerificarExistenciaDePessoaPorEmailESenha(String email, String senha)
        //{
        //    if (ObterPessoaPorEmailESenha(email, senha) != null)
        //    {
        //        return true;
        //    }
        //    return false;
        //}

        public Boolean VerificarExistenciaDePessoaPorEmail(String email)
        {
            if (ObterPessoaPorEmail(email) != null)
            {
                return true;
            }
            return false;
        }

        public void InserirPessoa(Pessoa pessoa)
        {
            this.pessoaRepositorio.InserirPessoa(pessoa);
        }

        public Boolean InserirPessoaComRetorno(Pessoa pessoa)
        {
            return this.pessoaRepositorio.InserirPessoaComRetorno(pessoa);
        }

        public int BuscarQuantidadeRegistros()
        {
            return this.pessoaRepositorio.BuscarQuantidadeRegistros();
        }

        public void RemoverPessoa(Pessoa pessoa)
        {
            this.pessoaRepositorio.RemoverPessoa(pessoa);
        }

        //public void AtualizarPessoa(Pessoa pessoa)
        //{
        //    this.pessoaRepositorio.AtualizarPessoa(pessoa);
        //}

        //public Boolean AtualizarPessoaComRetorno(Pessoa pessoa)
        //{
        //    return this.pessoaRepositorio.AtualizarPessoaComRetorno(pessoa);
        //}

        public Boolean VerificarSeExistePessoaPorId(int idPessoa)
        {
            if (ObterPessoaPorId(idPessoa) != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
