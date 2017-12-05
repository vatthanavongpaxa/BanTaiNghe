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
        if(!IsPostBack)
        x.ASPXComboBox("select MaCV,TenCV from ChucVu", ddlChucVu, "tencv", "macv");
        
    }

   

    protected void BtDanngNhap_Click(object sender, EventArgs e)
    {
        //DataTable dt = x.getData("select * from TaiKhoan where TaiKhoan='" + txttk.Value + "' and MatKhau='" + txtmk.Value + "'");
        //if (dt.Rows.Count > 0)
        //{
        //    Session["AD"] = dt.Rows[0][4].ToString();
        //    Response.Redirect("~/Admin/Admin.aspx");
        //}
        //else
        //{
        //    Response.Write("<script>alert('Đăng Nhập Thất Bại!')</script>");
        //}
        KiemTraNhap(txttk.Value + "",txtmk.Value + "",ddlChucVu.SelectedIndex);
    }

    private void KiemTraNhap(string AD, string MatKhau, int CV)
    {
        AD = txttk.Value;
        MatKhau = txtmk.Value;
        int Quyen = Int32.Parse(ddlChucVu.SelectedValue.ToString());
        CV = Quyen;
        Object[] dn = new Object[] { AD, MatKhau,Quyen};
        DataTable dtb = x.GetDataTable("SP_DangNhap1",dn);
        int num = 0;
        if (dtb.Rows.Count > 0)
        {
            num = int.Parse("0" + dtb.Rows[0][0]);
            switch (num)
            {
                case 3: // Khai báo Session cho phép đăng nhập
                    Session["AD"] = txttk.Value;
                    Session["MatKhau"] = txtmk.Value;
                    Session["CV"] = ddlChucVu.SelectedValue.ToString();
                    //Session["Ma"] = x.getData("select MaTK from TaiKhoan where TaiKhoan ='" + txttk.Value + "'");
                    //int ma = Int32.Parse(Session["Ma"].ToString());
                    //demo.ma = Int32.Parse(Session["Ma"].ToString());
                    demo.user = Session["CV"].ToString();
                    Response.Redirect("~/Admin/Admin.aspx");
                    break;
                case 1: //Thông báo tên đăng nhập không tồn tại
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Tên đăng nhập không tồn tại!');", true);
                    break;
                case 2: // thông báo sai mật khẩu
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Mật khẩu đăng nhập không đúng!');", true);
                    break;
                //case 4:
                //    Session["AD"] = txttk.Value;
                //    Session["MatKhau"] = txtmk.Value;
                //    Session["CV"] = ddlChucVu.SelectedValue.ToString();
                //    demo.user = Session["CV"].ToString();
                //    Response.Redirect("~/Admin/Admin.aspx");
                //    break;
                case 5:
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Quyền truy cập không đúng!');", true);
                    break;

            }
        }
        dtb.Dispose();
    }
}