using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_TinTuc : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadTinTuc();
        }
    }
    public void LoadTinTuc()
    {
        Gvtintuc.DataSource = x.getData("Select * from TinTuc");
        Gvtintuc.DataBind();
    }

    protected void Gvtintuc_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Response.Redirect("~/Admin/SuaTT.aspx?MATT=" + Gvtintuc.DataKeys[e.NewSelectedIndex].Value.ToString());
    }

    protected void Gvtintuc_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow
            && e.Row.RowIndex != Gvtintuc.EditIndex)
        {
            (e.Row.Cells[4].Controls[0] as LinkButton).Attributes["onclick"] = "return confirm('Bạn muốn xóa dòng này?');";
        }
    }

    protected void Gvtintuc_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            object[] xoa = new object[] { 3,2,0, Gvtintuc.DataKeys[e.RowIndex].Value,"","","" };

            x.GetDataTable("SP_TinTuc", xoa);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Thông báo: Xóa dữ liệu thành công!');", true);
            Response.Redirect("~/Admin/TinTuc.aspx");
        }
        catch
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Xóa dữ liệu thất bại!');", true);
        }
    }

    protected void Gvtintuc_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Gvtintuc.PageIndex = e.NewPageIndex;
        LoadTinTuc();
    }
}