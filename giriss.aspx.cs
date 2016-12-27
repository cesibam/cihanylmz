using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class giris : System.Web.UI.Page
{
    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("App_Data\\urunler.accdb"));
    protected void Page_Load(object sender, EventArgs e)
    {

        baglanti.Open();
        OleDbCommand komut_oku = new OleDbCommand("select * from uyeler", baglanti);
        baglanti.Close();
    }
    protected void girs_Click(object sender, EventArgs e)
    {
        string sql;
        Label4.Text = "";
        Label5.Text = "";
        sql = " select count(*) from uyeler where k_adii='" + k_adiii.Text + "'";

        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data\\urunler.accdb"));
        baglanti.Open();
        OleDbCommand komut_oku = new OleDbCommand(sql, baglanti);
        int toplam = Convert.ToInt16(komut_oku.ExecuteScalar());
        komut_oku.ExecuteScalar();

        if (toplam == 1)
        {
            string sql_sifre = "select sifre from uyeler where k_adii='" + k_adiii.Text + "'";
            OleDbCommand cmdsifre = new OleDbCommand(sql_sifre, baglanti);
            string sifre = cmdsifre.ExecuteScalar().ToString();//veritabanından gelen şifre
            if (sifree.Text == sifre)//sifredeki değer kullanıcının girmiş olduğu değer kullanıcının girmiş olduğu değer
            {

                Session["k_adii"] = k_adiii.Text;
                Session["sifre"] = sifree.Text;
                Response.Redirect("Default.aspx");

            }
            else
            {
                Label5.Text = "Şifre Hatalı";
            }

        }
        else
        {
            Label4.Text = "Kullanıcı Adı Bulunamadı";
        }


        k_adiii.Text = "";
        sifree.Text = "";

        baglanti.Close();
        baglanti.Dispose();
    }
    protected void kayit_Click(object sender, EventArgs e)
    {
       
        

        
        
            Response.Redirect("uye.aspx");
        }
    }
