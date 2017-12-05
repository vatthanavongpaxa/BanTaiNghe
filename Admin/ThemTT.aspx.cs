using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ThemTT : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Session["AD"]==null)
            {
                Response.Redirect("~/Admin/DangNhap.aspx");
            }
            LbNgay.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
        }
    }



    protected void btThem_ServerClick(object sender, EventArgs e)
    {
        try
        {
            
            object[] o = new object[] { 1, 0, 0,0,txtTieuDe.Text,LbNgay.Text,ckeNoiDung.Text};
            DataTable dt = x.GetDataTable("SP_TinTuc", o);
            int num = 0;
            if (dt.Rows.Count > 0)
            {
                num = int.Parse("0" + dt.Rows[0][0]);
                switch (num)
                {
                    case 0: //Thông báo tên đăng nhập tồn tại
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Lỗi: Tiêu đề đã tồn tại!');", true);
                        txtTieuDe.Focus();
                        break;
                    case 1:
                        Response.Redirect("~/Admin/TinTuc.aspx");
                        break;

                }
            }
            dt.Dispose();
        }
        catch
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "redirectMe", "alert('Thông báo: Thêm dữ liệu thất bại!');", true);
        }
    }
}