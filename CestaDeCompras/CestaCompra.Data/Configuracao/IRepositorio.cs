using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CestaCompra.Data.Configuracao
{
    public interface IRepositorio<TEntity> where TEntity : class
    {
        TEntity Inserir(TEntity entity);
        TEntity Atualizar(TEntity entity);
        void Excluir(TEntity entity);
        TEntity Obter(System.Linq.Expressions.Expression<Func<TEntity, bool>> filter);
        IQueryable<TEntity> ObterTodos();
        IUnitOfWork UnitOfWork { get; }
    }
}