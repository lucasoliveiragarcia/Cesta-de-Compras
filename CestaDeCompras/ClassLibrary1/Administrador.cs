using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    public class Administrador:Pessoa
    {
        private int IdPessoa;
        private String cargo;

        public Administrador(int idPessoa, string nomePessoa, string sobrenomePessoa, string cpfPessoa, DateTime dataNascimento, string email, int idEndereco) : base(idPessoa, nomePessoa, sobrenomePessoa, cpfPessoa, dataNascimento, email, idEndereco)
        {
        }
    }
}
