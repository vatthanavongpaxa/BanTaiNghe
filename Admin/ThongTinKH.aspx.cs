using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ThongTinKH : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Session["AD"] == null || demo.user == "2")
            {
                Response.Redirect("~/Admin/DangNhap.aspx");

            }
            else
            {
                LoadTT();
            }
        }
    }
    public void LoadTT()
    {
        DataTable dt = x.getData("select * from KhachHang where MAKH=" + Request.QueryString["MAKH"].ToString());
        txtHoTen.Text = dt.Rows[0][1].ToString();
        chkGioiTinh.Checked = Boolean.Parse(dt.Rows[0][2].ToString());
        txtNgay.Text = DateTime.Parse(dt.Rows[0][3].ToString()).ToString("dd/MM/yyyy");
        txtSDT.Text = dt.Rows[0][4].ToString();
        txtDiaChi.Text = dt.Rows[0][5].ToString();
        txtEmail.Text = dt.Rows[0][6].ToString();
        txtMatKhau.Text = dt.Rows[0][7].ToString();
    }
    //protected void btTraLoi_ServerClick(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/Admin/GuiMail.aspx");
    //}

    protected void txtMatKhau_PreRender(object sender, EventArgs e)
    {
        txtMatKhau.Attributes["value"] = txtMatKhau.Text;
    }
}