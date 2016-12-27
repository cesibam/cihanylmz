using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class anasayfa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("App_Data/urunler.accdb"));
        baglanti.Open();
        OleDbCommand komut_oku = new OleDbCommand("select * from urun5", baglanti);
        DataList1.DataSource = komut_oku.ExecuteReader();
        DataList1.DataBind();
        baglanti.Close();

        
    }


    protected void arama_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("giriss.aspx");
    }
}