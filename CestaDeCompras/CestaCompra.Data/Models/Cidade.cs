using System;
using System.Collections.Generic;

namespace CestaCompra.Data.Models
{
    public class Cidade
    {
        public int IdCidade { get; set; }        
        public string Nome { get; set; }
        public virtual Estado Estado { get; set; }
        public virtual List<Endereco> Enderecos { get; set; }
    }
}