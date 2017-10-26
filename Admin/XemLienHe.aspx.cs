using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_XemLienHe : System.Web.UI.Page
{
    public void Xuat_LH()
    {
        thuvien tv = new thuvien("LIENHE","");
        tv.docbang();
        DataListLienHe.DataSource = tv.Dt;
        DataListLienHe.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] == null)
        {
            Response.Redirect("~/Admin/Admin.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                Xuat_LH();
            }

        }
    }
}