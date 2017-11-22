using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ThemTK : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            x.ASPXComboBox("select MaCV,TenCV from ChucVu", ddlChucVu, "TenCV", "MaCV");
        }
    }

    protected void btThem_ServerClick(object sender, EventArgs e)
    {
        try
        {
            object[] o = new object[] { 1, 0, 0, "", ddlChucVu.SelectedValue.ToString(), txtHoTen.Text, txtSDT.Text, txtEmail.Text, txtTaiKhoan.Text, txtMatKhau.Text };
            DataTable dt = x.GetDataTable("BH_TaiKhoan", o);
            int num = 0;
            if (dt.Rows.Count > 0)
            {
                num = int.Parse("0" + dt.Rows[0][0]);
                switch (num)
                {
                    case 3: //Thông báo tên đăng nhập tồn tại
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Tài khoản đã tồn tại!');", true);
                        txtTaiKhoan.Focus();
                        break;
                    case 2: // thông báo tồn tại chức vụ quản lý
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Chức vụ quản lý đã tồn tại!');", true);
                        break;
                    case 4: // thông báo tồn tại email
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Email đã tồn tại!');", true);
                        break;
                    case 1:
                        Response.Redirect("~/Admin/TaiKhoan.aspx");
                        break;

                }
            }
            dt.Dispose();

        }
        catch
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Thông báo: Thêm dữ liệu thất bại!');", true);
        }


    }
}