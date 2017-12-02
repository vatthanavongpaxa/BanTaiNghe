using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangWeb_TrangDangKy : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["User"] != null || Session["Email"] != null)
            {
                fdangnhap.Visible = false;
            }
            else
                fdangnhap.Visible = true;
        }
    }



    protected void btn_DangKy_ServerClick(object sender, EventArgs e)
    {
        //string a = TextBox_EmailDK.Text;
    }

    protected void LinkButton_DangNhap_Click(object sender, EventArgs e)
    {
        string tenDN = TextBox_EmailDN.Text;
        string matKhau = TextBox_PassDN.Text;
        object[] dn = new object[] { tenDN, matKhau };
        DataTable dt = x.GetDataTable("SP_DangNhapKhachHang", dn);
        int num = 0;
        if (dt.Rows.Count > 0)
        {
            num = int.Parse("0" + dt.Rows[0][0]);
            switch (num)
            {
                case 1: //Thông báo tên đăng nhập không tồn tại
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Tên đăng nhập không tồn tại!');", true);
                    break;
                case 2: // thông báo sai mật khẩu
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Mật khẩu đăng nhập không đúng!');", true);
                    break;
                case 3:
                    Session["User"] = dt.Rows[0][1].ToString();
                    Session["Email"] = tenDN;
                    Response.Redirect("~/Default.aspx");
                    break;
            }
        }
    }

    protected void Button_DangKy_Click(object sender, EventArgs e)
    {
        string tenKH = TextBox_NameDK.Text;
        string email = TextBox_EmailDK.Text;
        string matKhau = TextBox_PassDK.Text;
        string ngaySinh = DateTime.Parse(TextBox_NgaySinh.Text).ToString();
        string SDT = TextBox_SDT.Text;
        string diaChi = TextBox_DiaChi.Text;
        bool gioiTinh = bool.Parse(DropDownList_GioiTinh.SelectedValue.ToString());
        object[] dk = new object[] { 0, 0, 1, "", tenKH, gioiTinh, ngaySinh, SDT, diaChi, email, matKhau };
        DataTable dt = x.GetDataTable("BH_KhachHang", dk);
        int num = 0;
        if (dt.Rows.Count > 0)
        {
            num = int.Parse("0" + dt.Rows[0][0]);
            switch (num)
            {
                case 1:
                    Response.Redirect("~/TrangWeb/Default.aspx");
                    break;
                case 4:
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Email đã tồn tạik');", true);
                    break;

            }
            
        }
        dt.Dispose();
    }
}