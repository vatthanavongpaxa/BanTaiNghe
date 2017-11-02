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

  
        
    protected void GvSanPham_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
    {
        Response.Redirect("~/Admin/SuaSanPham.aspx?MASP=" + GvSanPham.DataKeys[e.NewSelectedIndex].Value.ToString());
 
    }

    protected void GvSanPham_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            Object[] o = new Object[] { GvSanPham.DataKeys[e.RowIndex].Value };
            x.ExecuteQuery("del_sanpham", o);
            Response.Write("<script>alert('Xóa Dữ Liệu Thành Công !')</script>");
            htdssanpham();
        }
        catch
        {
            Response.Write("<script>alert('Xóa Dữ Liệu Thất Bại !')</script>");
        }
    }

    protected void GvSanPham_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow
            && e.Row.RowIndex != GvSanPham.EditIndex)
        {
            (e.Row.Cells[5].Controls[0] as LinkButton).Attributes["onclick"] = "return confirm('Bạn muốn xóa dòng này?');";
        }
    }
}