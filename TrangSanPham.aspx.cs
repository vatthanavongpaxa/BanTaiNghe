using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class TrangWeb_TrangSanPham : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Load_SanPham();
        }
    }
   
    public void Load_SanPham()
    {
        if (Request.QueryString["MaLoai"] != null)
        {
            string maLoai = Request.QueryString["MaLoai"];
            string type = "2";
            object[] obj = new object[] { type, maLoai };
            Repeater_SP.DataSource = x.GetDataTable("XemSanPhamTheoNSX", obj);
        }
        else
        {
            string maLoai = "";
            string type = "1";
            object[] obj = new object[] { type, maLoai };
            Repeater_SP.DataSource = x.GetDataTable("XemSanPhamTheoNSX", obj);
        }

        Repeater_SP.DataBind();
    }

}