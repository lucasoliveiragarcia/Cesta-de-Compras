using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    class TipoMedida
    {
        private int IdTipoMedida;
        private String nomeTipoMedida;

        public TipoMedida(int idTipoMedida, string nomeTipoMedida)
        {
            IdTipoMedida = idTipoMedida;
            this.nomeTipoMedida = nomeTipoMedida;
        }
    }
}
