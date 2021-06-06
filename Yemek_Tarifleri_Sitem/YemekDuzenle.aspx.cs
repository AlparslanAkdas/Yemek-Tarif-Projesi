using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            /* Page.IsPostBack==false anlamısayfayı yeniden yükleme 1 kere yüklendiğin zaman tamamdır.Neden bu metodu kullanıdık 
             *update yaptığımız zaman çorbaları çorba olarak değiştiriyoruz listelediğimiz zaman yine çorbalar olarak gözüküyor 
             * ondan dolayı bu metodu kullandık
             */
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Yemekler where Yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt16(Context.Request.QueryString["Yemekid"]));
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();

                /*Yemekler.aspx.cs den kategori listelesini YemekDuzenle.aspx.cs sayfasında form loadına çekiyoruz çünkü kategori listesine
                 * ihtiyacımız var sebebi KategoriDuzenleme işlemi sayesinde dropdown'a kategoriler gelecek
                 */

                if (Page.IsPostBack == false)
                {
                    //Kategori listesi
                    SqlCommand komut2 = new SqlCommand("select * from Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";   //DataTextField dropdown içerisinde gözükecek olan alan
                    DropDownList1.DataValueField = "Kategoriid";  //DataValueField dropdown list kategorinin arka planında çalışacak değer kategorin adın id sini arka planda tutucak
                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //MapPath konum yolu gibi nereye kayıt edilecek
            FileUpload1.SaveAs(Server.MapPath("/resimler/"+FileUpload1.FileName));
            SqlCommand komut = new SqlCommand("update Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarifi=@p3,Kategoriid=@p4,YemekResim=@p6 where Yemekİd=@p5"
                , bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Tüm yemeklerin durumunu false yaptık
            SqlCommand komut = new SqlCommand("update Yemekler set Durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Günün Yemeği için id göre durumu true yapalım
            SqlCommand komut2 = new SqlCommand("update Yemekler set Durum=1 where Yemekid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", Convert.ToInt16(Context.Request.QueryString["Yemekid"]));
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}