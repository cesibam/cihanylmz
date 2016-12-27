using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data\\urunler.accdb"));
        baglanti.Open();
        OleDbCommand komut_oku = new OleDbCommand("select * from mesaj", baglanti);

        baglanti.Close();
    }

    protected void giris_Click(object sender, EventArgs e)
    {
        string sql;

        sql = "insert into mesaj (ad,soyad,mail,tel,msj) values ('" + ad.Text + "','" + so.Text + "','" + ma.Text + "','" + msj.Text + "')";
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data\\urunler.accdb"));
        baglanti.Open();
        OleDbCommand komut_oku = new OleDbCommand(sql, baglanti);
        komut_oku.ExecuteNonQuery();


        ad.Text = "";
        so.Text = "";
        ma.Text = "";
        
        msj.Text = "";
        baglanti.Close();
        baglanti.Dispose();

        
    }
}