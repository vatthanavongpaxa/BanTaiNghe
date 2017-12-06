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
            CheckGioHang();
           
        }

    }
    public void CheckUser()
    {
        if (Session["User"] != null || Session["Email"] != null)
        {
            LinkButton_ThongTinCaNhan.Text = "Xin chào " + Session["User"].ToString();
            //LinkButton_DangXuat.Visible = true;
            btDangNhap.Visible = false;
        }
        else
        {
            LinkButton_ThongTinCaNhan.Visible = false;
            LinkButton_ThongTinCaNhan.Text = "";
            //LinkButton_DangXuat.Visible = false;
            btDangNhap.Visible = true;
        }
    }
    protected void Button_DangNhap_Click(object sender, EventArgs e)
    {

    }

    protected void btn_DangNhap_ServerClick(object sender, EventArgs e)
    {
        
    }

    protected void LinkButton_DangNhap_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/DangNhapKH.aspx");

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
        Response.Redirect("~/DangNhapKH.aspx");
    }
    public void CheckGioHang()
    {
        if (Session["GioHang"] != null)
        {
            DataTable dt = (DataTable)Session["GioHang"];
            Label_GioHang.Text = Convert.ToString(dt.Rows.Count);
        }
    }

    protected void LinkButton_DangKy_Click(object sender, EventArgs e)
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
                    Response.Redirect("~/Default.aspx");
                    break;
                case 4:
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Email đã tồn tại');", true);
                    break;

            }

        }
        dt.Dispose();
    }

    protected void LinkButton_DangNhap_Click1(object sender, EventArgs e)
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

    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        if (Session["User"] == null || Session["Email"] == null)
        {
            Response.Write("<script>alert('Vui lòng đăng nhập tài khoản !')</script>");
        }
        else
            Response.Redirect("~/TrangGioHang.aspx");
    }

    protected void giohang_ServerClick(object sender, EventArgs e)
    {
        if (Session["User"] == null || Session["Email"] == null)
        {
            Response.Write("<script>alert('Vui lòng đăng nhập tài khoản !')</script>");
        }
        else
            Response.Redirect("~/TrangGioHang.aspx");
    }
}
