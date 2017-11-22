using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_SuaTK : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            if (Session["AD"] == null)
            {
                Response.Redirect("~/Admin/DangNhap.aspx");
            }
            else
            {
                LoadTK();
            }
    }
    public void LoadTK()
    {
        x.ASPXComboBox("select MaCV,TenCV from ChucVu", ddlChucVu, "TenCV", "MaCV");
        DataTable dt = x.getData("select * from TaiKhoan where MaTK=" + Request.QueryString["MATK"].ToString());
        txtHoTen.Text = dt.Rows[0][2].ToString();
        txtSDT.Text = dt.Rows[0][3].ToString();
        txtEmail.Text = dt.Rows[0][4].ToString();
        ddlChucVu.SelectedValue = dt.Rows[0][1].ToString();
        txtTaiKhoan.Text = dt.Rows[0][5].ToString();
        txtMatKhau.Text = dt.Rows[0][6].ToString();

    }
    protected void btCapNhat_ServerClick(object sender, EventArgs e)
    {
        try
        {
            object[] o = new object[] {2,0,1,Request.QueryString["MATK"].ToString(),ddlChucVu.SelectedValue,txtHoTen.Text,txtSDT.Text,txtEmail.Text,txtTaiKhoan.Text,txtMatKhau.Text};
            x.GetDataTable("BH_TaiKhoan", o);
            Response.Redirect("~/Admin/TaiKhoan.aspx");
        }
        catch
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Cập nhật dữ liệu thất bại!');", true);
        }
    }

    protected void txtMatKhau_PreRender(object sender, EventArgs e)
    {
        txtMatKhau.Attributes["value"] = txtMatKhau.Text;
    }
}