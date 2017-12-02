using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage_KhachHang : System.Web.UI.MasterPage
{
    XLDL x = new XLDL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CheckUser();
           
        }

    }
    public void CheckUser()
    {
        if (Session["User"] != null || Session["Email"] != null)
        {
            LinkButton_ThongTinCaNhan.Text = "Xin chào " + Session["User"].ToString();
            LinkButton_DangXuat.Visible = true;
            LinkButton_DangNhap.Visible = false;
        }
        else
        {
            LinkButton_ThongTinCaNhan.Visible = false;
            LinkButton_ThongTinCaNhan.Text = "";
            LinkButton_DangXuat.Visible = false;
            LinkButton_DangNhap.Visible = true;
        }
    }
    protected void Button_DangNhap_Click(object sender, EventArgs e)
    {

    }

    protected void btn_DangNhap_ServerClick(object sender, EventArgs e)
    {
        //string tenDN = TextBox_Email.Text;
        //string matKhau = TextBox_Password.Text;
        //object[] dn = new object[] { tenDN, matKhau };
        //DataTable dt = x.GetDataTable("SP_DangNhapKhachHang", dn);
        //int num = 0;
        //if (dt.Rows.Count > 0)
        //{
        //    num = int.Parse("0" + dt.Rows[0][0]);
        //    switch (num)
        //    {
        //        case 1: //Thông báo tên đăng nhập không tồn tại
        //            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Tên đăng nhập không tồn tại!');", true);
        //            break;
        //        case 2: // thông báo sai mật khẩu
        //            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Mật khẩu đăng nhập không đúng!');", true);
        //            break;
        //        case 3:
        //            Session["User"] = dt.Rows[0][1].ToString();
        //            Label_XinChao.Text = "Xin Chào " + Session["User"].ToString();
        //            //Response.Redirect("~/TrangWeb/Default.aspx");

        //            break;
        //    }
        //}
    }

    protected void LinkButton_DangNhap_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/TrangDangKy.aspx");

    }

    protected void LinkButton_ThongTinCaNhan_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/TrangThongTinCaNhan.aspx");
    }

    protected void LinkButton_DangXuat_Click(object sender, EventArgs e)
    {
        Session["User"] = null;
        Session["Email"] = null;
        LinkButton_ThongTinCaNhan.Visible = false;
        LinkButton_ThongTinCaNhan.Text = "";
        Response.Redirect("~/TrangDangKy.aspx");
    }
}
