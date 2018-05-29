using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    class Bairro
    {
        private int IdBairro;
        private int IdCidade;
        private String nomeBairro;

        public Bairro(int idBairro, int idCidade, string nomeBairro)
        {
            IdBairro = idBairro;
            IdCidade = idCidade;
            this.nomeBairro = nomeBairro;
        }
    }
}
