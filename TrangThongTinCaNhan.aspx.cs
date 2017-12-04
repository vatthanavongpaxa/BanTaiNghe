using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangWeb_TrangThongTinCaNhan : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CheckUser();
            LoadTTCN();
        }
    }
    public void CheckUser()
    {
        if (Session["User"] == null || Session["Email"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        
    }
    public void LoadTTCN()
    {
        string user = Session["Email"].ToString();

        DataTable dt = x.getData("Select * from KhachHang where Email = '" + user + "'");
        TextBox_NameKH.Text = dt.Rows[0]["HoTenKH"].ToString();
        TextBox_SDT.Text = dt.Rows[0]["SDT"].ToString();
        TextBox_NgaySinh.Text = DateTime.Parse( dt.Rows[0]["NgaySinh"].ToString()).ToString("MM/dd/yyyy");
        TextBox_DiaChi.Text = dt.Rows[0]["DiaChi"].ToString();
        DropDownList_GioiTinh.SelectedValue = dt.Rows[0]["GioiTinh"].ToString();


    }


    protected void TextBox_NgaySinh_PreRender(object sender, EventArgs e)
    {
        TextBox_NgaySinh.Attributes["value"] = TextBox_NgaySinh.Text;
    }

    protected void LinkButton_DangXuat_Click(object sender, EventArgs e)
    {

    }
}