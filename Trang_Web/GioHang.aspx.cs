using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Trang_Web_GioHang : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["MASP"] != null)
            {
                int maSP = int.Parse(Request.QueryString["MASP"]);
                thuvien tv = new thuvien("", "SELECT MASP,TENSP,GIA FROM SANPHAM WHERE MASP=" + maSP);
                tv.docbang();
                DataTable dt = tv.Dt;
                double donGia = double.Parse(dt.Rows[0]["GIA"].ToString());
                int soLuong = 1;
                string tenSP = dt.Rows[0]["TENSP"].ToString();
                themVaoGioHang(maSP, tenSP, donGia, soLuong);
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
                    lbTongThanhTien.Text = string.Format("{0:0,0 VNĐ}",double.Parse(tongThanhTien.ToString()));
                }
                GridViewSP.DataSource = dt;
                GridViewSP.DataBind();
            }
        }
    }
    public void themVaoGioHang(int maSP, string tenSP, double donGia, int soLuong)
    {
        DataTable dt;
        if(Session["GioHang"] == null)
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
        if(dong != -1)
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

    public static int spCoTrongGioHang(int maSP,DataTable dt)
    {
        int dong = -1;
        for(int i = 0; i < dt.Rows.Count; i++)
        {
            if (int.Parse(dt.Rows[i]["MASP"].ToString()) == maSP) 
            {
                dong = i;
                break;
            }
        }
        return dong;
    }

    protected void btCapNhat_Click(object sender, EventArgs e)
    {
        DataTable dt = (DataTable)Session["GioHang"];
        foreach (GridViewRow r in GridViewSP.Rows)
        {
            foreach (DataRow dr in dt.Rows)
            {
                if (Convert.ToString(GridViewSP.DataKeys[r.DataItemIndex].Value) == dr["MASP"].ToString())
                {
                    TextBox t = (TextBox)r.Cells[3].FindControl("txtSoLuong");
                    
                    
                    if (Convert.ToInt32(t.Text) <= 0)
                        dt.Rows.Remove(dr);
                    else
                        dr["SOLUONG"] = t.Text;
                    break;
                }
            }
        }
        Session["GioHang"] = dt;
        Response.Redirect("~/Trang_Web/GioHang.aspx");
    }

    protected void GridViewSP_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int chiso = int.Parse(e.RowIndex.ToString());
        try
        {
            DataTable dt = (DataTable)Session["GioHang"];
            dt.Rows.RemoveAt(chiso);
            Session["GioHang"] = dt;
            Response.Redirect("~/Trang_Web/GioHang.aspx");

        }
        catch
        {
            Response.Redirect("~/Trang_Web/GioHang.aspx");
        }
    }

    protected void BtTT_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Trang_Web/SanPham.aspx");
    }

    protected void Btxoa_Click(object sender, EventArgs e)
    {
        Session["GioHang"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void btThanhToan_Click(object sender, EventArgs e)
    {
        if (Session["TENDN"] != null)
        {
            Response.Redirect("~/Trang_Web/ThanhToan.aspx");
        }
        else
        {
            lbBaoloi.Text = "Đăng nhập trước !!";
        }
        
    }
}