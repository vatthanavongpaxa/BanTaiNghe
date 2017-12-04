using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class TrangWeb_TrangChiTiet : System.Web.UI.Page
{
    static DataTable tbGioHang = new DataTable();
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["GioHang"] != null)
            {
                tbGioHang = Session["GioHang"] as DataTable;
            }
            else
            {
                tbGioHang.Rows.Clear();
                tbGioHang.Columns.Clear();
                tbGioHang.Columns.Add("idSP", typeof(int));
                tbGioHang.Columns.Add("TenSP", typeof(string));
                tbGioHang.Columns.Add("Gia", typeof(double));
                tbGioHang.Columns.Add("SoLuong", typeof(int));
                tbGioHang.Columns.Add("TongTien", typeof(double), "SoLuong * Gia");
            }
            Load_CTSP();
        }
    }
    public void Load_CTSP()
    {

        Repeater_CTSP.DataSource = x.getData("SELECT TOP 1 * FROM SanPham where MASP=" + Request.QueryString["MASP"].ToString());
        Repeater_CTSP.DataBind();
    }

}