using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    class ListaCompraProduto
    {
        private int quantCompraProduto;
        private int IdProduto;
        private int IdListaCompra;

        public ListaCompraProduto(int quantCompraProduto, int idProduto, int idListaCompra)
        {
            this.quantCompraProduto = quantCompraProduto;
            IdProduto = idProduto;
            IdListaCompra = idListaCompra;
        }
    }
}
