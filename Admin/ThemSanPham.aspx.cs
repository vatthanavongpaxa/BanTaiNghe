using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ThemSanPham : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if(demo.user == "2")
            {
                Response.Redirect("~/Admin/DangNhap.aspx");
            }
            else
            {
                htdsloaisp();
            }
        }
            
    }
    public void htdsloaisp()
    {
        x.ASPXComboBox("select MANSX,TENNSX from NhaSanXuat", ddlNSX, "TENNSX", "MANSX");
    }

    protected void btThem_ServerClick(object sender, EventArgs e)
    {
        try
        {
            string a = txtTenSP.Text;
            string sql = "select TenSP form SANPHAM where TENSP='" + a + "'";
            DataTable dt = x.getData(sql);
            if(dt.Rows.Count <=0)
            {
                string hinh = FileUploadHinh.FileName;
                if (FileUploadHinh.FileName != "")
                {

                    FileUploadHinh.SaveAs(Server.MapPath("~/Hinh/" + hinh));
                }
                string loai = ddlNSX.SelectedValue.ToString();
                string c = ckeChitiet.Text.ToString();
                object[] o = new object[] { a, txtDonGia.Text, hinh, loai, c };
                x.ExecuteQuery("BH_SanPham", o);
                Response.Write("<script>alert('Thêm Dữ Liệu Thành Công !')</script>");
                Response.Redirect("~/Admin/SanPham.aspx");
            }
            else
            {
                Response.Write("<script>alert('Trùng tên sản phẩm. Vui lòng nhập lại !')</script>");
                txtTenSP.Focus();
            }
            
        }
        catch
        {
            
            
            Response.Write("<script>alert('Thêm Dữ Liệu Thất Bại !')</script>");
            
        }
    }
}