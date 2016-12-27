using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ygs_Click(object sender, EventArgs e)
    {
        Response.Redirect("urunler.aspx");
    }

    protected void lys_Click(object sender, EventArgs e)
    {
        Response.Redirect("urunler2.aspx");
    }
    protected void dgs_Click(object sender, EventArgs e)
    {
        Response.Redirect("urunler3.aspx");
    }
    protected void kpss_Click(object sender, EventArgs e)
    {
        Response.Redirect("urunler4.aspx");
    }
}