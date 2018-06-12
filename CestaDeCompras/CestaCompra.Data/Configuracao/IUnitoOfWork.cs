using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Configuracao
{
    public interface IUnitOfWork
    {
        int Commit();
        System.Threading.Tasks.Task<int> CommitAsync();
        void Roolback();
    }
}