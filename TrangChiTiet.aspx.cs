using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class TrangWeb_TrangChiTiet : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Load_CTSP();
            Load_CMT();
        }
    }
    public void Load_CTSP()
    {

        Repeater_CTSP.DataSource = x.getData("SELECT TOP 1 * FROM SanPham where MASP=" + Request.QueryString["MASP"].ToString());
        Repeater_CTSP.DataBind();
    }
    public void Load_CMT()
    {
        ddlBinhLuan.DataSource = x.getData("select HoTenKH, NoiDung from PhanHoi bl, KhachHang kh where  bl.makh = kh.MaKH and MaSP = " + Request.QueryString["MASP"].ToString());
        ddlBinhLuan.DataBind();
    }

    protected void LinkButton_Gui_Click(object sender, EventArgs e)
    {
        if (Session["User"] == null || Session["Email"] == null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "alert('Vui lòng đăng nhập tài khoản !');", true);
        }
        else
        {
            DataTable makh = x.getData("select makh from KhachHang where Email='" + Session["Email"].ToString() + "'");
            x.thuchienlenh("insert into PhanHoi values (" + makh.Rows[0][0].ToString() + "," + Request.QueryString["MASP"] + ",N'" + txtNoiDung.Text + "','" + Session["Email"].ToString() + "')");
            Load_CMT();
            txtNoiDung.Text = "";
            txtNoiDung.Focus();
        }
    }

    protected void LinkButton_Gui_Click1(object sender, EventArgs e)
    {
        
    }
}