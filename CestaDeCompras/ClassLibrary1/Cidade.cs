using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    class Cidade
    {
        private int IdCidade;
        private int IdEstado;
        private String nomeCidade;

        public Cidade(int idCidade, int idEstado, string nomeCidade)
        {
            IdCidade = idCidade;
            IdEstado = idEstado;
            this.nomeCidade = nomeCidade;
        }
    }
}
