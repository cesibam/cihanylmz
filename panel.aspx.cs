using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class panel : System.Web.UI.Page
{
    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("App_Data\\urunler.accdb"));

    public void urun_kaydet(string urun_ad, string fiyat, string marka, string resim)
    {
        string kayit = "insert into urun(ad,fiyat,kategory,resim) values ('" + urun_ad + "','" + fiyat + "','" + marka + "','" + resim + "')";
        baglanti.Open();
        OleDbCommand kaydet_cmd = new OleDbCommand(kayit, baglanti);
        kaydet_cmd.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect("panel.aspx");
    }
    public void goster()
    {
        baglanti.Open();
        string sql_oku = "select * from urun";
        OleDbCommand oku_cmd = new OleDbCommand(sql_oku, baglanti);
        GridView1.DataSource = oku_cmd.ExecuteReader();
        GridView1.DataBind();
        baglanti.Close();
    }
    public void urun_silme(string urun_sil)
    {
        string sil = "delete * from urun where ad='" + urun_sil + "'";
        baglanti.Open();
        OleDbCommand sil_cmd = new OleDbCommand(sil, baglanti);
        sil_cmd.ExecuteReader();
        baglanti.Close();
        Response.Redirect("panel.aspx");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a_ad"] != null)
        {
            Session["a_ad"].ToString();

        }
        if (Session["a_ad"] == null)
        {
            Response.Redirect("giriss.aspx");
        }

        goster();
    }
    protected void ekleme_Click(object sender, EventArgs e)
    {
        urun_kaydet(urun_ad.Text, fiyat.Text, marka.Text, resim.FileName.ToString());
        urun_ad.Text = "";
        fiyat.Text = "";
        marka.Text = "";
    }
    protected void sil_Click(object sender, EventArgs e)
    {
        urun_silme(urun_sil.Text);
    }
   
   
    protected void cks_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("giriss.aspx");
    }
}