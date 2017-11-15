using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ThemNSX : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }



    protected void BtThem_ServerClick(object sender, EventArgs e)
    {
        try
        {
            string a = txtNSX.Text;
            string sql = "select TenNSX from NhaSanXuat where TenNSX ='" + a.ToString() +"'";
            DataTable dt = x.getData(sql);
            if (dt.Rows.Count <= 0)
            {
                string hinh = FileUploadHinh.FileName;

                if (FileUploadHinh.FileName != "")
                {

                    FileUploadHinh.SaveAs(Server.MapPath("~/Hinh/" + hinh));
                }
                object[] o = new object[] { a, hinh };

                x.ExecuteQuery("BH_NhaSanXuat", o);
                Response.Write("<script>alert('Thêm Dữ Liệu Thành Công !')</script>");
                Response.Redirect("~/Admin/NhaSanXuat.aspx");
            }
            else
            {
                Response.Write("<script>alert('Tên nhà sản xuất đã tồn tại !')</script>");
                txtNSX.Focus();
            }
                                                  
        }
        catch 
        {
            
            Response.Write("<script>alert('Thêm dữ liệu thất bại !')</script>");
         
        }
        
    }
}