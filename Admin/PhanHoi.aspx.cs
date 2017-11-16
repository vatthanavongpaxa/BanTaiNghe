using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_PhanHoi : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            if (Session["AD"] == null)
            {
                Response.Redirect("~/Admin/DangNhap.aspx");
            }
            else
            {
                htdsphanhoi();
            }
    }

    private void htdsphanhoi()
    {
        GvPhanHoi.DataSource = x.getData("select * from PhanHoi");
        GvPhanHoi.DataBind();
    }

    protected void GvPhanHoi_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Response.Redirect("~/Admin/TraLoi.aspx?MAPH=" + GvPhanHoi.DataKeys[e.NewSelectedIndex].Value.ToString());
    }
}