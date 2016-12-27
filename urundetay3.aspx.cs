using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class urundetay3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string urun_id = Request.QueryString["urun_id"];
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("App_Data/urunler.accdb"));
        string sql = "Select * from urun3 where urun_id=" + urun_id;
        baglanti.Open();
        OleDbCommand komut_oku = new OleDbCommand(sql, baglanti);
        DataList1.DataSource = komut_oku.ExecuteReader();
        DataList1.DataBind();
        baglanti.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("giriss.aspx");
    }
}