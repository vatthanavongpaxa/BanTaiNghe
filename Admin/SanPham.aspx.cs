using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SanPham : System.Web.UI.Page
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
                htdssanpham();
            }
    }
    public void htdssanpham()
    {
        GvSanPham.DataSource = x.getData("exec htds_sanpham");
        GvSanPham.DataBind();

    }

    protected void GvSanPham_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GvSanPham.PageIndex = e.NewPageIndex;
        htdssanpham();
    }
}