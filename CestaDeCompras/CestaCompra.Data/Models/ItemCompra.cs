namespace CestaCompra.Data.Models
{
    public class ItemCompra
    {
        public int IdItemCompra { get; set; }                   
        public string Quantidade { get; set; }
        public double Preco { get; set; }
        public int Valido { get; set; }
        public virtual Compra Compra { get; set; }
        public virtual Produto Produto { get; set; }       
    }
}