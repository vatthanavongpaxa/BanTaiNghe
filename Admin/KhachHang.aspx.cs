using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_KhachHang : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            if(Session["AD"] == null || demo.user == "2")
            {
                Response.Redirect("~/Admin/DangNhap.aspx");
            }
        else
            {
                LoadKH();
            }
    }
    public void LoadKH()
    {
        GvKhachHang.DataSource = x.getData("select * from KhachHang");
        GvKhachHang.DataBind();
    }

    protected void GvKhachHang_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Response.Redirect("~/Admin/ThongTinKH.aspx?MAKH=" + GvKhachHang.DataKeys[e.NewSelectedIndex].Value.ToString());
    }

    protected void GvKhachHang_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GvKhachHang.PageIndex = e.NewPageIndex;
        LoadKH();
    }

    protected void GvKhachHang_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow
            && e.Row.RowIndex != GvKhachHang.EditIndex)
        {
            (e.Row.Cells[8].Controls[0] as LinkButton).Attributes["onclick"] = "return confirm('Bạn muốn xóa dòng này?');";
        }
    }

    protected void GvKhachHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            object[] o = new object[]
            {
                2,0,3,GvKhachHang.DataKeys[e.RowIndex].Value,"","","","","","",""
            };
            x.GetDataTable("BH_KhachHang", o);
            Response.Redirect("~/Admin/KhachHang.aspx");
        }
        catch
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Xóa dữ liệu thất bại!');", true);
        }
    }
}