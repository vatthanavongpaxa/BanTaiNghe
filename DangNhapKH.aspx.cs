using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DangNhapKH : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {

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
                    //Label_XinChao.Text = "Xin Chào " + Session["User"].ToString();
                    Response.Redirect("~/Default.aspx");

                    break;
            }
        }
    }
}