using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            pnLogin.Visible = false;
            pnLogOut.Visible = true;
            lbUsername.Text = Session["USERNAME"].ToString();
        }
        else
        {
            pnLogin.Visible = true;
            pnLogOut.Visible = false;
            lbUsername.Text = "";
        }
    }

    protected void btLogin_Click(object sender, EventArgs e)
    {
        string username = "'" + txtUser.Text + "'";
        string password = "'" + txtPassword.Text + "'";
        string lenhselect = "SELECT * FROM LOGINADMIN WHERE USERNAME = " + username + " AND PASSWORD = " + password;
        thuvien tv = new thuvien("", lenhselect);
        tv.docbang();
        if (tv.Sodong > 0)
        {
            Session["USERNAME"] = txtUser.Text;
            Session["TENDN"] = null;
            Response.Redirect("~/Admin/CapNhatSP.aspx");

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
    }

    protected void ibtRePage_Click(object sender, ImageClickEventArgs e)
    {

    }
}