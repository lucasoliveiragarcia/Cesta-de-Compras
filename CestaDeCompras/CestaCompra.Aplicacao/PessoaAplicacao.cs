using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CestaCompra.AcessoBD;
using CestaCompra.Data.Models;

namespace CestaCompra.Aplicacao
{
    public class PessoaAplicacao
    {
        private PessoaRepositorio pessoaRepositorio;

        public PessoaAplicacao()
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

        public void InserirPessoa(Pessoa usuario)
        {
            this.pessoaRepositorio.InserirPessoa(usuario);
        }

        public Boolean InserirPessoaComRetorno(Pessoa usuario)
        {
            return this.pessoaRepositorio.InserirPessoaComRetorno(usuario);
        }

        public int BuscarQuantidadeRegistros()
        {
            return this.pessoaRepositorio.BuscarQuantidadeRegistros();
        }

        public void RemoverPessoa(Pessoa usuario)
        {
            this.pessoaRepositorio.RemoverPessoa(usuario);
        }

        //public void AtualizarPessoa(Pessoa usuario)
        //{
        //    this.pessoaRepositorio.AtualizarPessoa(usuario);
        //}

        //public Boolean AtualizarPessoaComRetorno(Pessoa usuario)
        //{
        //    return this.pessoaRepositorio.AtualizarPessoaComRetorno(usuario);
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
