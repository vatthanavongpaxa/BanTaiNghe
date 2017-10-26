using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MAU_MANHINH_HOMEPAGE : System.Web.UI.MasterPage
{
    public void xuat()
    {
        thuvien tv = new thuvien("LOAISANPHAM", "");
        tv.docbang();
        DataListMN.DataSource = tv.Dt;
        DataListMN.DataKeyField = "MALOAI";
        DataListMN.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            xuat();
            if(Session["USERNAME"] != null)
            {
                ibtRePage.Visible = true;
            }
        }
        
    }

    protected void ibtRePage_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/CapNhatSP.aspx");
    }
}
