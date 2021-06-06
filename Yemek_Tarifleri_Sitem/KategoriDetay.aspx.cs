using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinifi snf = new sqlsinifi();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("select * from Yemekler where Kategoriid=@p1",snf.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt16(Context.Request.QueryString["Kategoriid"]));
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}