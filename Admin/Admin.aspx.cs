using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AD"] == null)
        {
            Response.Redirect("~/Admin/DangNhap.aspx");
        }
    }

    protected void btLogin_Click(object sender, EventArgs e)
    {
       
    }

    protected void btLogOut_Click(object sender, EventArgs e)
    {
        
    }

    protected void ibtRePage_Click(object sender, ImageClickEventArgs e)
    {

    }
}