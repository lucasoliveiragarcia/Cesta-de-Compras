using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    class CompraRealizada
    {
        private DateTime dataCompra;
        private Double valorTotal;
        private int IdCompraRealizada;
        private int IdCliente;

        public CompraRealizada(DateTime dataCompra, double valorTotal, int idCompraRealizada, int idCliente)
        {
            this.dataCompra = dataCompra;
            this.valorTotal = valorTotal;
            IdCompraRealizada = idCompraRealizada;
            IdCliente = idCliente;
        }
    }
}
