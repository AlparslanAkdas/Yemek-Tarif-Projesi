using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumId"];

            if (Page.IsPostBack == false)
            {

                /*Yemekad farklı bir tabloda burda birleştirme kullandık hangi yemeğe yorum yapılmış ise onu getireceğiz
                 *inner join iki tablo arasındaki ortak alanları getiriyor on alt tarafta şart için kullanılıyor 
                 */

                SqlCommand komut = new SqlCommand("select YorumAdSoyad,YorumMail,Yorumİcerik,YemekAd from Yorumlar " +
                    "inner join Yemekler on Yorumlar.YemekId=Yemekler.Yemekİd where YorumId=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt16(Context.Request.QueryString["YorumId"]));
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtAdSoyad.Text = dr[0].ToString();
                    TxtMailAdresi.Text = dr[1].ToString();
                    Txticerik.Text = dr[2].ToString();
                    TxtYemek.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Yorumlar set Yorumİcerik=@p1,YorumOnay=@p2 where YorumId=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Txticerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", Convert.ToInt16(Context.Request.QueryString["Yorumid"]));
            komut.ExecuteNonQuery();
            bgl.baglanti().Close(); 
        }
    }
}