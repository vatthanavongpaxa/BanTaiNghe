using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_LoaiSanPham : System.Web.UI.Page
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
                LoadGV();
            }
    }
    public void LoadGV()
    {
        GvLoaiSanPham.DataSource = x.getData("exec htds_loaisp");
        GvLoaiSanPham.DataBind();
    }
}