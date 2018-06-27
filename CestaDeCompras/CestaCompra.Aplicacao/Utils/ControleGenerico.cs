using System;
using System.Drawing;
using System.Web;
using System.Web.UI;

namespace CestaCompra.Apresentacao
{
    public class ControleGenerico
    {
        public static int GetIdUsuarioCorrente(Page objPage)
        {
            int id = 0;
            try
            {
                id = Convert.ToInt32(HttpContext.Current.User.Identity.Name);
            }
            catch
            {
                id = 0;
            }
            return id;
        }
    }
}