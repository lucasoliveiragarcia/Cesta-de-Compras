using System;

namespace ClassLibraryCesta
{
  public abstract class Pessoa
    {
        private int IdPessoa;
        private String nomePessoa;
        private String sobrenomePessoa;
        private String cpfPessoa;
        private DateTime dataNascimento;
        private String email;
        private int IdEndereco;

        protected Pessoa(int idPessoa, string nomePessoa, string sobrenomePessoa, string cpfPessoa, DateTime dataNascimento, string email, int idEndereco)
        {
            IdPessoa = idPessoa;
            this.nomePessoa = nomePessoa;
            this.sobrenomePessoa = sobrenomePessoa;
            this.cpfPessoa = cpfPessoa;
            this.dataNascimento = dataNascimento;
            this.email = email;
            IdEndereco = idEndereco;
        }
    }
}
