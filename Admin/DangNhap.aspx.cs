using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DangNhap : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void BtDanngNhap_Click(object sender, EventArgs e)
    {
        //DataTable dt = x.getData("select * from TaiKhoan where TaiKhoan='" + txttk.Value + "' and MatKhau='" + txtmk.Value + "'");
        //if (dt.Rows.Count > 0)
        //{
        //    Session["AD"] = dt.Rows[0][4].ToString();
        //    Response.Redirect("~/Admin/Admin.aspx");
        //}
        //else
        //{
        //    Response.Write("<script>alert('Đăng Nhập Thất Bại!')</script>");
        //}
        KiemTraNhap(txttk.Value + "",txtmk.Value);
    }

    private void KiemTraNhap(string TaiKhoan, string MatKhau)
    {
        TaiKhoan = txttk.Value;
        MatKhau = txtmk.Value;
        Object[] dn = new Object[] { TaiKhoan, MatKhau };
        DataTable dtb = x.GetDataTable("SP_DangNhap1",dn);
        int num = 0;
        if (dtb.Rows.Count > 0)
        {
            num = int.Parse("0" + dtb.Rows[0][0]);
            switch (num)
            {
                case 3: // Khai báo Session cho phép đăng nhập
                    Session["TaiKhoan"] = txttk.Value;
                    Session["MatKhau"] = txtmk.Value;
                    Response.Redirect("~/Admin/Admin.aspx");
                    break;
                case 1: //Thông báo tên đăng nhập không tồn tại
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Tên đăng nhập không tồn tại!');", true);
                    break;
                case 2: // thông báo sai mật khẩu
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Mật khẩu đăng nhập không đúng!');", true);
                    break;
                //case 3: //thông báo TenDangNhap đã bị khóa
                //    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Tên đăng nhập này đã bị khóa!');", true);
                //    break;
                //case 4: // Thông báo phải đổi mật khẩu và chuyển người dùng đến trang DoiMatKhau.aspx
                //    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Bạn phải đổi mật khẩu trước khi đăng nhập!');location.href='DoiMatKhau.aspx?userid=" + TenDangNhap + "'", true);
                //    break;
            }
        }
        dtb.Dispose();
    }
}