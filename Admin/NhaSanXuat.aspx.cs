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
        GvNhaSanXuat.DataSource = x.getData("exec htds_loaisp");
        GvNhaSanXuat.DataBind();
    }

    protected void GvNhaSanXuat_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GvNhaSanXuat.PageIndex = e.NewPageIndex;
        LoadGV();
    }

    //protected void GvLoaiSanPham_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    //{
        

    //}

    protected void GvNhaSanXuat_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            Object[] o = new Object[] { GvNhaSanXuat.DataKeys[e.RowIndex].Value };
            x.ExecuteQuery("deleteNSX", o);
            Response.Write("<script>alert('Xóa Dữ Liệu Thành Công !')</script>");
            LoadGV();
        }
        catch
        {
            Response.Write("<script>alert('Xóa Dữ Liệu Thất Bại !')</script>");
        }
    }

    //protected void GvLoaiSanPham_RowDataBound(object sender, GridViewRowEventArgs e)
    //{

       
    //}

    protected void GvNhaSanXuat_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow
           && e.Row.RowIndex != GvNhaSanXuat.EditIndex)
        {
            (e.Row.Cells[3].Controls[0] as LinkButton).Attributes["onclick"] = "return confirm('Bạn muốn xóa dòng này?');";
        }
    }

    protected void GvNhaSanXuat_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Response.Redirect("~/Admin/SuaNSX.aspx?MANSX=" + GvNhaSanXuat.DataKeys[e.NewSelectedIndex].Value.ToString());
    }
}