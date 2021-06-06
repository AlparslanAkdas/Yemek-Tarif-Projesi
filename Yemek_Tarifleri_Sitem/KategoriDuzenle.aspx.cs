using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriId"];
            /* Page.IsPostBack==false anlamısayfayı yeniden yükleme 1 kere yüklendiğin zaman tamamdır.Neden bu metodu kullanıdık 
             *update yaptığımız zaman çorbaları çorba olarak değiştiriyoruz listelediğimiz zaman yine çorbalar olarak gözüküyor 
             * ondan dolayı bu metodu kullandık
             */
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Kategoriler where KategoriId=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt16(Context.Request.QueryString["KategoriId"]));
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where KategoriId=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", Convert.ToInt16(Context.Request.QueryString["KategoriId"]));
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}