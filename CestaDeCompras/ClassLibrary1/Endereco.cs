using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    class Endereco
    {
        private String cep;
        private String logradouro;
        private String complemento;
        private int numEndereco;
        private int IdEndereco;
        private int IdBairro;

        public Endereco(string cep, string logradouro, string complemento, int numEndereco, int idEndereco, int idBairro)
        {
            this.cep = cep;
            this.logradouro = logradouro;
            this.complemento = complemento;
            this.numEndereco = numEndereco;
            IdEndereco = idEndereco;
            IdBairro = idBairro;
        }
    }
}
