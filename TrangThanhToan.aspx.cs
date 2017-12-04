using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangWeb_TrangThanhToan : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Load();
        }
    }
    public void Load()
    {
        if (Session["Email"] != null)
        {
            string user = Session["Email"].ToString();

            DataTable dt = x.getData("Select * from KhachHang where Email = '" + user + "'");
            TextBox_NameKH.Text = dt.Rows[0]["HoTenKH"].ToString();
            TextBox_SDT.Text = dt.Rows[0]["SDT"].ToString();
            TextBox_NgaySinh.Text = dt.Rows[0]["NgaySinh"].ToString();
            TextBox_DiaChi.Text = dt.Rows[0]["DiaChi"].ToString();
            
            string gioiTinh = dt.Rows[0]["GioiTinh"].ToString();
            if(gioiTinh == "True")
            {
                TextBox_GioiTinh.Text = "Nam";
            }
            else
            {
                TextBox_GioiTinh.Text = "Nữ";
            }
        }
        if (Session["GioHang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["GioHang"];

            double tongThanhTien = 0;
            foreach (DataRow r in dt.Rows)
            {
                r["THANHTIEN"] = Convert.ToInt32(r["SOLUONG"]) * Convert.ToDouble(r["GIA"]);
                tongThanhTien += Convert.ToDouble(r["THANHTIEN"]);
                //lbTongThanhTien.Text = string.Format("{0:0,0 VNĐ}", double.Parse(tongThanhTien.ToString()));
            }
            GridView_GioHang.DataSource = dt;
            GridView_GioHang.DataBind();
        }

    }
}