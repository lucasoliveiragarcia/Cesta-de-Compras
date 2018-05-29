using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    class Compra
    {
        private Double precoProduto;
        private int quantProduto;
        private int IdCompra;
        private int IdCompraRealizada;
        private int IdEstabelecimento;
        private int IdProduto;

        public Compra(double precoProduto, int quantProduto, int idCompra, int idCompraRealizada, int idEstabelecimento, int idProduto)
        {
            this.precoProduto = precoProduto;
            this.quantProduto = quantProduto;
            IdCompra = idCompra;
            IdCompraRealizada = idCompraRealizada;
            IdEstabelecimento = idEstabelecimento;
            IdProduto = idProduto;
        }
    }
}
