using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_SuaNSX : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
            if (Session["AD"] == null)
            {
                Response.Redirect("~/Admin/DangNhap.aspx");
            }
            else
            {
                load();
            }
    }
    public void load()
    {
        DataTable dt= x.getData("select * from NhaSanXuat where MANSX=" + Request.QueryString["MANSX"].ToString());
        txtNSX.Text = dt.Rows[0][1].ToString();
        Image1.ImageUrl = "~/Hinh/" + dt.Rows[0][2].ToString();

    }

    protected void BtCapNhat_ServerClick(object sender, EventArgs e)
    {
        try
        {
            if (FileUploadHinh.HasFile == true)
            {
                string hinh = FileUploadHinh.FileName;
                if (FileUploadHinh.FileName != "")
                {

                    FileUploadHinh.SaveAs(Server.MapPath("~/Hinh/" + hinh));
                }
                Object[] o = new Object[] { Request.QueryString["MANSX"].ToString(), txtNSX.Text,hinh };
                x.ExecuteQuery("update_nhasanxuat", o);
                Response.Redirect("~/Admin/NhaSanXuat.aspx");
            }
            else
            {
                Object[] o1 = new Object[] { Request.QueryString["MANSX"].ToString(), txtNSX.Text,"" };
                x.ExecuteQuery("update_nhasanxuat", o1);
                Response.Redirect("~/Admin/NhaSanXuat.aspx");
            }

        }
        catch
        {
            Response.Write("<script>alert('Sửa Dữ Liệu Thất Bại!')</script>");
        }
    }
}