using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();

        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemekİd"];
                islem = Request.QueryString["islem"];

                //Kategori listesi
                SqlCommand komut2 = new SqlCommand("select * from Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";   //DataTextField dropdown içerisinde gözükecek olan alan
                DropDownList1.DataValueField = "KategoriId";  //DataValueField dropdown list kategorinin arka planında çalışacak değer kategorin adın id sini arka planda tutucak
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

            //Yemek Listesi
            SqlCommand komut = new SqlCommand("select * from Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();


            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("delete from Yemekler where Yemekİd=@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", Convert.ToInt16(Context.Request.QueryString["Yemekİd"]));
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();

                SqlCommand komut3 = new SqlCommand("update Kategoriler set KategoriAdet=KategoriAdet-1 where KategoriId=@p1", bgl.baglanti());
                komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
                komut3.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("insert into Yemekler (YemekAd,YemekMalzeme,YemekTarifi,Kategoriid) values(@p1,@p2,@p3,@p4)"
                , bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori Sayısını Arttırma Yemek ekledikçe mesela çorba sayısı artacak sebze yemekleri sayısı artacak
            SqlCommand komut2 = new SqlCommand("update Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriId=@p1 "
                , bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}