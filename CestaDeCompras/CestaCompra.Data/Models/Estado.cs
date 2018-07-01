using System.Collections.Generic;

namespace CestaCompra.Data.Models
{
    public class Estado
    {
        public int IdEstado { get; set; }       
        public string Nome { get; set; }
        public virtual List<Cidade> Cidades { get; set; }
    }
}