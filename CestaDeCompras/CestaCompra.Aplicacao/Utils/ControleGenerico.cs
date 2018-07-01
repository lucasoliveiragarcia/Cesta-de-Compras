using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Reflection;
using System.Web;
using System.Web.UI;

namespace CestaCompra.Apresentacao
{
    public static class ControleGenerico
    {
        public static void Page_Load(Page page)
        {
            AtribuirIdObjetoPage(page);
        }

        public static DataSet ToDataSet<T>(this IList<T> list)
        {
            Type elementType = typeof(T);
            DataSet ds = new DataSet();
            DataTable t = new DataTable();
            ds.Tables.Add(t);
            
            foreach (var propInfo in elementType.GetProperties())
            {
                Type ColType = Nullable.GetUnderlyingType(propInfo.PropertyType) ?? propInfo.PropertyType;

                t.Columns.Add(propInfo.Name, ColType);
            }
            
            foreach (T item in list)
            {
                DataRow row = t.NewRow();

                foreach (var propInfo in elementType.GetProperties())
                {
                    row[propInfo.Name] = propInfo.GetValue(item, null) ?? DBNull.Value;
                }

                t.Rows.Add(row);
            }

            return ds;
        }

        public static void AtribuirIdObjetoPage(Page objetoPage)
        {
            PropertyInfo objPropertyInfoChamadaID = GetPropertyInfoChamadaID(objetoPage);
            int valorIDPagina = 0;
            if ((objPropertyInfoChamadaID != null) && (objPropertyInfoChamadaID.CanWrite))
            {
                valorIDPagina = GetValorIDPaginaWeb(objetoPage);
                objPropertyInfoChamadaID.SetValue(objetoPage, valorIDPagina, null);
            }
            else
            {
                throw new Exception("Implemente uma Property ID na pagina em questão com get e set");
            }
        }

        public static int GetValorIDPaginaWeb(Page objPage)
        {

            /*1º busca id no querystring*/
            object parametro = getValorIDPaginaWebRequest(objPage);
            int valorId = 0;

            if (parametro != null && !string.IsNullOrEmpty(parametro.ToString().Trim()))
            {
                valorId = Convert.ToInt32(parametro);   
            }

            /*2º busca id na property pois nao existe na querystring*/
            if (valorId == 0)
            {
                PropertyInfo objPropertyInfo = GetPropertyInfoChamadaID(objPage);
                if (objPropertyInfo != null)
                {
                    parametro = objPropertyInfo.GetValue(objPage, null);
                }
                else
                {
                    throw new Exception("Implemente uma Property chamada ID na pagina em questão com get e set");
                }

                if (parametro != null && !string.IsNullOrEmpty(parametro.ToString().Trim()))
                {
                    valorId = Convert.ToInt32(parametro);
                    
                }
            }
            return valorId;
        }

        private static object getValorIDPaginaWebRequest(Page objPage)
        {
            object parametro = objPage.Request["Id"];

            if (parametro == null)
                parametro = objPage.Request["ID"];

            if (parametro == null)
                parametro = objPage.Request["id"];

            if (parametro == null)
                parametro = objPage.Request["iD"];

            return parametro;
        }

        public static PropertyInfo GetPropertyInfoChamadaID(Page objPage)
        {
            Type tipoPage = objPage.GetType().BaseType;
            PropertyInfo objPropertyInfo = getPropertyInfo(tipoPage, "Id");

            if (objPropertyInfo == null)
                objPropertyInfo = getPropertyInfo(tipoPage, "ID");

            if (objPropertyInfo == null)
                objPropertyInfo = getPropertyInfo(tipoPage, "id");

            if (objPropertyInfo == null)
                objPropertyInfo = getPropertyInfo(tipoPage, "iD");

            return objPropertyInfo;
        }

        private static PropertyInfo getPropertyInfo(Type tipoObjeto, string nomeProperty)
        {
            return tipoObjeto.GetProperty(nomeProperty, BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public | BindingFlags.FlattenHierarchy);
        }
    }
}