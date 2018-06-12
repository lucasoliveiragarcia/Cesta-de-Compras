using System;
using System.Collections.Generic;
using System.Linq;
using CestaCompra.Data;
using CestaCompra.Data.Models;

namespace CestaCompra.AcessoBD
{
    public class PessoaRepositorio
    {
        public ContextCestaBD Contexto { get; set; }

        public PessoaRepositorio()
        {
            this.Contexto = new ContextCestaBD();
        }

        public Pessoa ObterPessoaPorId(int id)
        {
            return this.Contexto.Pessoa.Find(id);
        }

        public Pessoa ObterPessoaPorEmail(Pessoa Pessoa)
        {
            return this.Contexto.Pessoa.Where(l => l.Email.ToLower().Equals(Pessoa.Email.ToLower())).SingleOrDefault();
        }

        public List<Pessoa> ObterTodosOsPessoas()
        {
            return this.Contexto.Pessoa.ToList();
        }

        public Pessoa ObterPessoaPorEmail(String email)
        {
            return this.Contexto.Pessoa.Where(l => l.Email.Equals(email)).SingleOrDefault();
        }

        public void InserirPessoa(Pessoa Pessoa)
        {
            if (!VerificarSeEmailDePessoaJaExiste(Pessoa))
            {
                this.Contexto.Pessoa.Add(Pessoa);
                this.Contexto.SaveChanges();
            }
        }

        public Boolean InserirPessoaComRetorno(Pessoa Pessoa)
        {
            try
            {
                if (!VerificarSeEmailDePessoaJaExiste(Pessoa))
                {
                    this.Contexto.Pessoa.Add(Pessoa);
                    this.Contexto.SaveChanges();

                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public int BuscarQuantidadeRegistros()
        {
            return Contexto.Pessoa.Count();
        }

        public void RemoverPessoa(Pessoa Pessoa)
        {
            this.Contexto.Pessoa.Remove(Pessoa);
            this.Contexto.SaveChanges();
        }

        //public void AtualizarPessoa(Pessoa Pessoa)
        //{
        //    Pessoa Pessoaaconferir = new Pessoa();

        //    ContextCestaBD contextoModificado = new ContextCestaBD();

        //    if (VerificarSeEmailDePessoaJaExiste(Pessoa))
        //    {
        //        Pessoaaconferir = ObterPessoaPorEmail(Pessoa.Email);

        //        if (Pessoaaconferir.cod_Pessoa == Pessoa.cod_Pessoa)
        //        {
        //            contextoModificado.Entry(Pessoa).State = EntityState.Modified;
        //            contextoModificado.SaveChanges();
        //        }
        //    }
        //    else
        //    {
        //        contextoModificado.Entry(Pessoa).State = EntityState.Modified;
        //        contextoModificado.SaveChanges();
        //    }

        //}

        //public Boolean AtualizarPessoaComRetorno(Pessoa Pessoa)
        //{
        //    Pessoa Pessoaaconferir = new Pessoa();

        //    ContextCestaBD contextoModificado = new ContextCestaBD();

        //    if (VerificarSeEmailDePessoaJaExiste(Pessoa))
        //    {
        //        Pessoaaconferir = ObterPessoaPorEmail(Pessoa.Email);

        //        if (Pessoaaconferir.cod_Pessoa == Pessoa.cod_Pessoa)
        //        {
        //            contextoModificado.Entry(Pessoa).State = EntityState.Modified;
        //            contextoModificado.SaveChanges();

        //            return true;
        //        }
        //        else
        //        {
        //            return false;
        //        }

        //    }
        //    else
        //    {
        //        contextoModificado.Entry(Pessoa).State = EntityState.Modified;
        //        contextoModificado.SaveChanges();

        //        return true;
        //    }
        //}

        public Boolean VerificarSeEmailDePessoaJaExiste(Pessoa Pessoa)
        {
            if (ObterPessoaPorEmail(Pessoa) != null)
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
