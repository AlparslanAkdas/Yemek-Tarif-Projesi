using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifÖneriDetay : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tarifler where TarifId=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt16(Context.Request.QueryString["TarifId"]));
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[5].ToString();
                    TextBox5.Text = dr[6].ToString();
                }
                bgl.baglanti().Close();

                //Kategori listesi
                SqlCommand komut2 = new SqlCommand("select * from Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";   //DataTextField dropdown içerisinde gözükecek olan alan
                DropDownList1.DataValueField = "KategoriId";  //DataValueField dropdown list kategorinin arka planında çalışacak değer kategorin adın id sini arka planda tutucak
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Durum Güncelleme 
            SqlCommand komut = new SqlCommand("update Tarifler set TarifDurum=1 where TarifId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt16(Context.Request.QueryString["TarifId"]));
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği Anasayfaya Ekleme
            SqlCommand komut2 = new SqlCommand("insert into Yemekler (YemekAd,YemekMalzeme,YemekTarifi,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}