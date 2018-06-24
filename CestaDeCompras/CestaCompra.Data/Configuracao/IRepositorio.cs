using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;

namespace CestaCompra.Data.Configuracao
{
    public interface IRepositorio<TEntity> where TEntity : class
    {
        TEntity Inserir(TEntity entity);
        TEntity Atualizar(TEntity entity);
        void Excluir(TEntity entity);
        TEntity ObterPorId(int id);
        TEntity Obter(Expression<Func<TEntity, bool>> filter);
        List<TEntity> ObterTodos();
        IQueryable<TEntity> ObterTodosQuery();
        IUnitOfWork UnitOfWork { get; }
    }
}