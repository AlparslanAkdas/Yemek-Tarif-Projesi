using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];

            }

            SqlCommand komut = new SqlCommand("select * from Kategoriler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Silme işlemi
            /*Eğer biz aşağıdaki kodu yazmazsak sayfa ilk yüklendiğinde hata verecek çünkü direk sqlCommand yazdığımız zaman herhangi bir 
             * değer almadığı için ilk etapta sayfa hata verecek*/
            if(islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete from Kategoriler where KategoriId=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", Convert.ToInt16(Context.Request.QueryString["KategoriId"]));
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }


            /*Panel2.Visible=false demek panel2 başlangıçta gözükmüyor biz + basınca gözüküyor   */
            Panel2.Visible = false;
            Panel4.Visible = false;
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
            SqlCommand komut = new SqlCommand("insert into Kategoriler (KategoriAd) values(@p1)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}