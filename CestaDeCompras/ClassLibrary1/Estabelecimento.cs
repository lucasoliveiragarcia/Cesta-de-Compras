using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    class Estabelecimento
    {
        private String unidade;
        private String nomeEstabelecimento;
        private int IdEstabelecimento;
        private int IdEndereco;

        public Estabelecimento(string unidade, string nomeEstabelecimento, int idEstabelecimento, int idEndereco)
        {
            this.unidade = unidade;
            this.nomeEstabelecimento = nomeEstabelecimento;
            IdEstabelecimento = idEstabelecimento;
            IdEndereco = idEndereco;
        }
    }
}
