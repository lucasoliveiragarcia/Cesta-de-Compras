﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Models
{
    public class estado
    {
        public int idestado { get; set; }
        public int idpais { get; set; }
        public string nome { get; set; }

    }
}