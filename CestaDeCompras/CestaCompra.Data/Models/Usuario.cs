using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class Usuario
    {
        public int IdUsuario { get; set; }
        public int IdPessoa { get; set; }
        public int DataCadastro { get; set; }
        public int Admnistrador { get; set; }
        public string Login { get; set; }
        public string Senha { get; set; }
        public string Nivel { get; set; }
        public virtual Pessoa Pessoa { get; set; }
        public virtual CompraRealizada CompraRealizada { get; set; }
        //public virtual CompraRealizadaLista CompraRealizadaLista { get; set; }
    }
}