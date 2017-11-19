using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MAU_MANHINH_HOMEPAGE : System.Web.UI.MasterPage
{
    //public void xuat()
    //{
    //    thuvien tv = new thuvien("LOAISANPHAM", "");
    //    tv.docbang();
    //    DataListMN.DataSource = tv.Dt;
    //    DataListMN.DataKeyField = "MALOAI";
    //    DataListMN.DataBind();
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            if (Session["AD"] != null)
            {
                lbtendn.Text = "Xin Chào: " + Session["AD"].ToString();
                if(demo.user == "1")
                {
                    Label1.Text = "Chức vụ: Quản lý";
                }
                else
                    if(demo.user == "2")
                {
                    Label1.Text = "Chức vụ: Nhân viên";
                }
                   
            }
                
            else
                Response.Redirect("~/Admin/DangNhap.aspx");

    }

    protected void ibtRePage_Click(object sender, ImageClickEventArgs e)
    {
        
    }

    protected void Link_Click(object sender, EventArgs e)
    {
        Session["AD"] = null;
        lbtendn.Text = "";
        Response.Redirect("~/Admin/DangNhap.aspx");
    }
}
