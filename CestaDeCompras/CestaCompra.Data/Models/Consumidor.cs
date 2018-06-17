using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class Consumidor
    {


        public int IdConsumidor { get; set; }
        public DateTime DataCadastro { get; set; }
        public double Admnistrador { get; set; }
        public string Login { get; set; }
        public string Senha { get; set; }
        public double Nivel { get; set; }        
        public virtual Pessoa Pessoa { get; set; }
        public virtual List<Compra> Compras { get; set; }
        public virtual List<ListaCompra> ListasCompra { get; set; }
    }
}