using System;

namespace ClassLibraryCesta
{
    class Consumidor:Pessoa
    { 
        private String login;
        private DateTime dataCadastro;
        private String senha;
        private String nivel;
        private int IdConsumidor;

        public Consumidor(int idPessoa, string nomePessoa, string sobrenomePessoa, string cpfPessoa, DateTime dataNascimento, string email, int idEndereco) : base(idPessoa, nomePessoa, sobrenomePessoa, cpfPessoa, dataNascimento, email, idEndereco)
        {
           
        }

    }

}
