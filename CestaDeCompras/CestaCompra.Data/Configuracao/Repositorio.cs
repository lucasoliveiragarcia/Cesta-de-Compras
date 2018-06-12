using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace CestaCompra.Data.Configuracao
{
    public abstract class Repositorio<TEntity> : IRepositorio<TEntity> where TEntity : class
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly System.Data.Entity.DbSet<TEntity> _context;

        public Repositorio(IUnitOfWork unitoOfWork)
        {
            _context = ((Data.ContextCestaBD)_unitOfWork).Set<TEntity>();
            _unitOfWork = unitoOfWork;
        }

        public IUnitOfWork UnitOfWork { get { return _unitOfWork; }}
        public System.Data.Entity.DbSet<TEntity> Context { get { return _context; } }

        public TEntity Inserir(TEntity entity)
        {
            _context.Add(entity);
            return entity;
        }

        public TEntity Atualizar(TEntity entity)
        {
            ((ContextCestaBD)_unitOfWork).Entry(entity).State = System.Data.Entity.EntityState.Modified;
            return entity;
        }

        public void Excluir(TEntity entity)
        {
            _context.Remove(entity);
        }

        public TEntity Obter(Expression<Func<TEntity, bool>> filter)
        {
            return _context.FirstOrDefault(filter);
        }

        public IQueryable<TEntity> ObterTodos()
        {
            return _context;
        }
    }
}