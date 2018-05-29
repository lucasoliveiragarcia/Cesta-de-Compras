using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    class Estado
    {
        private int IdEstado;
        private int IdPais;
        private String nomeEstado;

        public Estado(int idEstado, int idPais, string nomeEstado)
        {
            IdEstado = idEstado;
            IdPais = idPais;
            this.nomeEstado = nomeEstado;
        }
    }
}
