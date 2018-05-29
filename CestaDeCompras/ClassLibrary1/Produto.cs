using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    class Produto
    {
        private int IdProduto;
        private String nomeProduto;
        private int unidadeProduto;
        private int IdMarca;
        private int IdTipoMedida;

        public Produto(int idProduto, string nomeProduto, int unidadeProduto, int idMarca, int idTipoMedida)
        {
            IdProduto = idProduto;
            this.nomeProduto = nomeProduto;
            this.unidadeProduto = unidadeProduto;
            IdMarca = idMarca;
            IdTipoMedida = idTipoMedida;
        }
    }
}
