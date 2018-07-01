
namespace CestaCompra.Data.Models
{
    public class Endereco
    {
        public int IdEndereco { get; set; }
        public string Cep { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Logradouro { get; set; }
        public virtual Cidade Cidade { get; set; }
        public virtual Estabelecimento Estabelecimento { get; set; }
        public virtual Pessoa Pessoa { get; set; }
    }
}