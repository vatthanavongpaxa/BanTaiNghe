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
        DataTable dt = x.getData("select * from LOGINADMIN where USERNAME='" + txttk.Value + "' and PASSWORD='" + txtmk.Value + "'");
        if (dt.Rows.Count > 0)
        {
            Session["AD"] = txttk.Value;
            Response.Redirect("~/Admin/Admin.aspx");
        }
        else
        {
            Response.Write("<script>alert('Đăng Nhập Thất Bại!')</script>");
        }
    }
}