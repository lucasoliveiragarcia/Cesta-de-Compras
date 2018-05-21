using System;
using System.Collections.Generic;
using System.Text;

namespace ClassLibraryCesta
{
    class ListaCompra
    {
        private DateTime dataCria;
        private DateTime dataFim;
        private DateTime dataLemb;
        private String nomeListaCompra;
        private int IdListaCompra;
        private int IdCliente;

        public ListaCompra(DateTime dataCria, DateTime dataFim, DateTime dataLemb, string nomeListaCompra, int idListaCompra, int idCliente)
        {
            this.dataCria = dataCria;
            this.dataFim = dataFim;
            this.dataLemb = dataLemb;
            this.nomeListaCompra = nomeListaCompra;
            IdListaCompra = idListaCompra;
            IdCliente = idCliente;
        }
    }

}
