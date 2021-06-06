using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string yemekid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            /*Aşağıfaki form yüklendiği zaman yemekid adlı değişkenime Anasayfadan taşımış olduğumuz yemekid değeri gelsin */
            yemekid = Request.QueryString["YemekId"];

            SqlCommand komut = new SqlCommand("Select YemekAd  From Yemekler where Yemekİd=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt16(Context.Request.QueryString["Yemekİd"]));
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            //Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("Select * from Yorumlar where YemekId=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", Convert.ToInt16(Context.Request.QueryString["YemekId"]));
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Yorumlar (YorumAdSoyad,YorumMail,Yorumİcerik,YemekId) " +
                "values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}