using System;
using System.Collections.Generic;
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
            htdsloaisp();
    }
    public void htdsloaisp()
    {
        x.ASPXComboBox("select MALOAI,TENLOAI from LOAISANPHAM", ddlLoaiSP, "TENLOAI", "MALOAI");
    }

    protected void btThem_ServerClick(object sender, EventArgs e)
    {
        try
        {
            string a = txtTenSP.Text;

            string hinh = FileUploadHinh.FileName;
            if (FileUploadHinh.FileName != "")
            {   
                
                FileUploadHinh.SaveAs(Server.MapPath("~/Hinh/" + hinh));
            }
            string loai = ddlLoaiSP.SelectedValue.ToString();
            string c = ckeChitiet.Text.ToString();
            object[] o = new object[] {a, txtDonGia.Text, hinh, loai, c };
            x.ExecuteQuery("BH_SanPham", o);
            Response.Write("<script>alert('Thêm Dữ Liệu Thành Công !')</script>");
            Response.Redirect("~/Admin/SanPham.aspx");
        }
        catch
        {
            
            Response.Write("<script>alert('Thêm Dữ Liệu Thất Bại. Do trùng tên sản phẩm !')</script>");
            txtTenSP.Focus();
        }
    }
}