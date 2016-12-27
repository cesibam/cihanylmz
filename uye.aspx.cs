using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class uye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data\\urunler.accdb"));
        baglanti.Open();
        OleDbCommand komut_oku = new OleDbCommand("select * from uyeler", baglanti);
        
        baglanti.Close();

        for (int i = 1; i < 31; i++)
        {
            gun.Items.Add(i.ToString());
        }
        for (int i = 1; i < 13; i++)
        {
            ay.Items.Add(i.ToString());
        }
        for (int i = 1900; i < 2015; i++)
        {
            yil.Items.Add(i.ToString());
        }
    }



    protected void giris_Click(object sender, EventArgs e)
    {
        string cinsiyet = "";
        string d_gun = gun.Text;
        string d_ay = ay.Text;
        string d_yil = yil.Text;
        string tarih = d_gun + d_ay + d_yil;
        string sql;
        if (bay.Checked)
        {
            cinsiyet = "Bay";
        }
        if (bayan.Checked)
        {
            cinsiyet = "Bayan";
        }
        sql = " select count(*) from uyeler where k_adii='" + k_adi.Text + "'";
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data\\urunler.accdb"));
        baglanti.Open();
        OleDbCommand komut_oku = new OleDbCommand(sql, baglanti);
        int toplam = Convert.ToInt16(komut_oku.ExecuteScalar());
        komut_oku.ExecuteScalar();

        if (toplam == 1)
        {
            la.Text = "Kullanıcı Adı var";

        }
        if (toplam == 0)
        {
            string sql_ekle = "insert into uyeler(uye_ad,uye_soyad,d_tarih,cinsiyet,k_adii,sifre,mail)values('" + ad.Text + "','" + soyad.Text + "','" + tarih + "','" + cinsiyet + "','" + k_adi.Text + "','" + sifre.Text + "','" + e_mail.Text + "')";
            OleDbCommand cmdekle = new OleDbCommand(sql_ekle, baglanti);
            cmdekle.ExecuteNonQuery();

            ba.Text = "Başarıyla Kayıt Oldu";
        }


        ad.Text = "";
        soyad.Text = "";
        tarih = "";
        k_adi.Text = "";
        sifre.Text = "";
        e_mail.Text = "";
        baglanti.Close();
        baglanti.Dispose();
        
    }
}