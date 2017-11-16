using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DoiMatKhau : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Text1.Value = Session["AD"].ToString();
    }

    protected void btDoiMK_Click(object sender, EventArgs e)
    {
        if(txtmkm.Value != txtnmk.Value)
        {
            Response.Write("<script>alert('Mật khẩu không trùng khớp!')</script>");
        }
        else
        {
            Object[] o = new Object[] {Text1.Value,txtmkm.Value,txtnmk.Value };
            x.ExecuteQuery("doimatkhau", o);
            Response.Redirect("~/Admin/DangNhap.aspx");
        }    
    }

    protected void btQuayLai_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Admin.aspx");
    }
}