using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangWeb_TrangGioHang : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadGioHang();
        }

    }
    public void LoadGioHang()
    {
        if (Request.QueryString["MASP"] != null)
        {
            int maSP = int.Parse(Request.QueryString["MASP"]);

            DataTable dt = x.getData("SELECT * FROM SANPHAM WHERE MASP = " + maSP);
            double donGia = double.Parse(dt.Rows[0]["GIA"].ToString());
            int soLuong = 1;
            string tenSP = dt.Rows[0]["TENSP"].ToString();
            themVaoGioHang(maSP, tenSP, donGia, soLuong);
        }
        if (Session["GioHang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["GioHang"];

            //double tongThanhTien = 0;
            //foreach (DataRow r in dt.Rows)
            //{
            //    r["THANHTIEN"] = Convert.ToInt32(r["SOLUONG"]) * Convert.ToDouble(r["GIA"]);
            //    tongThanhTien += Convert.ToDouble(r["THANHTIEN"]);
            //    lbTongThanhTien.Text = string.Format("{0:0,0 VNĐ}", double.Parse(tongThanhTien.ToString()));
            //}
            GridView_GioHang.DataSource = dt;
            GridView_GioHang.DataBind();
        }
    }

    public void themVaoGioHang(int maSP, string tenSP, double donGia, int soLuong)
    {
        DataTable dt;
        if (Session["GioHang"] == null)
        {
            dt = new DataTable();
            dt.Columns.Add("MASP");
            dt.Columns.Add("TENSP");
            dt.Columns.Add("GIA");
            dt.Columns.Add("SOLUONG");
            dt.Columns.Add("THANHTIEN");
        }
        else
        {
            dt = (DataTable)Session["GioHang"];
        }
        int dong = spCoTrongGioHang(maSP, dt);
        if (dong != -1)
        {
            dt.Rows[dong]["SOLUONG"] = Convert.ToInt32(dt.Rows[dong]["SOLUONG"]) + soLuong;
        }
        else
        {
            DataRow dr = dt.NewRow();
            dr["MASP"] = maSP;
            dr["TENSP"] = tenSP;
            dr["GIA"] = donGia;
            dr["SOLUONG"] = soLuong;
            dr["THANHTIEN"] = donGia * soLuong;
            dt.Rows.Add(dr);
        }
        Session["GioHang"] = dt;
    }

    public static int spCoTrongGioHang(int maSP, DataTable dt)
    {
        int dong = -1;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (int.Parse(dt.Rows[i]["MASP"].ToString()) == maSP)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }
}