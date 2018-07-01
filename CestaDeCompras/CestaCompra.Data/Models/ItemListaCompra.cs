namespace CestaCompra.Data.Models
{
    public class ItemListaCompra
    {       
        public int IdItemListaCompra { get; set; }
        public int Quantidade { get; set; }
        public virtual Produto Produto { get; set; }
        public virtual ListaCompra ListaCompra { get; set; }
    }
}