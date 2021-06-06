using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public class sqlsinifi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-6OOMP6V\SQLEXPRESS;Initial Catalog=YemekTarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}