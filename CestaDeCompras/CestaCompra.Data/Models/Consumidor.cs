using System;
using System.Collections.Generic;

namespace CestaCompra.Data.Models
{
    public class Consumidor
    {
        
        public int IdConsumidor { get; set; }
        public DateTime DataCadastro { get; set; }
        public int Administrador { get; set; }
        public string Login { get; set; }
        public string Senha { get; set; }
        public double Nivel { get; set; }
        public virtual Pessoa Pessoa { get; set; }
        public virtual List<Compra> Compras { get; set; }
        public virtual List<ListaCompra> ListasCompra { get; set; }
    }
}