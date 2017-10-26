using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_LogInLogOut : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["TENDN"] != null)
            {
                pnLogin.Visible = false;
                pnLogOut.Visible = true;
                lbUsername.Text = Session["TENDN"].ToString();

            }
            else
            {
                pnLogin.Visible = true;
                pnLogOut.Visible = false;
                lbUsername.Text = "";
                ibtRePage.Visible = false;
                if (Session["USERNAME"] != null)
                {
                    ibtRePage.Visible = true;
                }
            }
        }
    }

    protected void btLogin_Click(object sender, EventArgs e)
    {
        string username ="'" + txtUser.Text + "'";
        string password ="'" + txtPassword.Text + "'";
        string lenhselect = "SELECT * FROM LOGINKHACHHANG WHERE TENDN = " + username + " AND MATKHAU = " + password;
        thuvien tv = new thuvien("", lenhselect);
        tv.docbang();
        if(tv.Sodong > 0)
        {
            Session["TENDN"] = txtUser.Text;
            Session["USERNAME"] = null;
            // Response.Redirect("~/Admin/CapNhatSP.aspx");
            Response.Redirect("~/Trang_Web/SanPham.aspx");
            
        }
        else
        {
            lbThongBao.Text = "Kiểm tra lại Username hay Password";
        }
    }

    protected void btLogOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Session["TENDN"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void ibtRePage_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/CapNhatSP.aspx");
    }

    protected void btDangky_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Trang_Web/DangKy.aspx");
    }
}
