using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Trang_Web_ThanhToan : System.Web.UI.Page
{
    private int maKH;
    private double tongThanhTien = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
            xuatTTKH();

    }
    public void xuatTTKH()
    {
        if (Session["GioHang"] == null)
        {
            Response.Redirect("~/Trang_Web/GioHang.aspx");
        }
        if (Session["TENDN"] == null)
        {
            Response.Redirect("~/Trang_Web/GioHang.aspx");
        }
        if (Session["TENDN"] != null)
        {
            
            string lenhCmd = "SELECT MAKH,HOTENKH,DIACHIKH,DIENTHOAIKH,EMAIL FROM LOGINKHACHHANG WHERE TENDN = '" + Session["TENDN"].ToString() + "'";
            thuvien tv = new thuvien("", lenhCmd);
            
            DataTable dt = tv.docbang();
            if (dt.Rows.Count > 0)
            {
                maKH = int.Parse(dt.Rows[0]["MAKH"].ToString());
                lblHoTen.Text = dt.Rows[0]["HOTENKH"].ToString();
                lblDiaChi.Text = dt.Rows[0]["DIACHIKH"].ToString();
                lblDienthoai.Text = dt.Rows[0]["DIENTHOAIKH"].ToString();
                lblEmail.Text = dt.Rows[0]["EMAIL"].ToString();
            }
            Session["MAKH"] = maKH;
        }
        if (Session["GioHang"] != null)
        {
            DataTable dt = (DataTable)Session["GioHang"];
            GridViewSP.DataSource = dt;
            GridViewSP.DataBind();
            
            foreach (DataRow r in dt.Rows)
            {
                r["THANHTIEN"] = Convert.ToInt32(r["SOLUONG"]) * Convert.ToDouble(r["GIA"]);
                tongThanhTien += Convert.ToDouble(r["THANHTIEN"]);
                lblTongTien.Text = string.Format("{0:0,0 VNĐ}", double.Parse(tongThanhTien.ToString()));
                
            }
        }
    }

    protected void btnDongY_Click(object sender, EventArgs e)
    {
        string ngayGiao, nguoiNhan, diaChi, dienThoai;
        ngayGiao = txtNgayGiao.Text;
        nguoiNhan = txtNguoiN.Text;
        diaChi = txtDiaChi.Text;
        dienThoai = txtDThoai.Text;
        try
        {
            thuvien tv = new thuvien("DONDATHANG", "");
            tv.docbang();
            //string sqlCmd = "INSERT INTO DONDATHANG(MAKH,NGAYDH,NGAYGIAOHANG,TENNGUOINHAN,DIACHINHAN,DIENTHOAINHAN) VALUES(" + maKH + ",'" + DateTime.Today.ToString() + "','" + ngayGiao + "',N'" + nguoiNhan + "',N'" + diaChi + "','" + dienThoai + "')";
            DataRow dongMoi = tv.Dt.NewRow();
            dongMoi["MAKH"] = Session["MAKH"];
            dongMoi["NGAYDH"] = DateTime.Today.ToString();
            dongMoi["NGAYGIAOHANG"] = ngayGiao;
            dongMoi["TENNGUOINHAN"] = nguoiNhan;
            dongMoi["DIACHINHAN"] = diaChi;
            dongMoi["DIENTHOAINHAN"] = dienThoai;
            tv.Dt.Rows.Add(dongMoi);
            tv.capnhat();
            string s = "SELECT MAX(SOHD) FROM DONDATHANG WHERE MAKH = " + maKH;
            tv = new thuvien("", s);
            tv.docbang();

            int soDonDatHang = int.Parse(tv.Dt.Rows[0][0].ToString());
            DataTable dt = new DataTable();
            dt = (DataTable)Session["GioHang"];
            
            int maSP, soLuong;
            decimal gia;
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                maSP = int.Parse(dt.Rows[i]["MASP"].ToString());
                soLuong = int.Parse(dt.Rows[i]["SOLUONG"].ToString());
                gia = decimal.Parse(dt.Rows[i]["GIA"].ToString());
                //s = "INSERT INTO CTDATHANG(SODH,MASP,SOLUONG,GIA,THANHTIEN) VALUES(" + soDonDatHang + "," + maSP + "," + soLuong + "," + gia + "," + lblTongTien + ")";
                SqlConnection sqlConn = new SqlConnection(tv.Chuoiketnoi);
                sqlConn.Open();
                SqlCommand sqlCmd = new SqlCommand();
                sqlCmd.Connection = sqlConn;
                sqlCmd.CommandText = @"INSERT INTO CTDATHANG(SOHD,MASP,SOLUONG,GIA,THANHTIEN) VALUES(" + soDonDatHang + "," + maSP + "," + soLuong + "," + gia + "," + Convert.ToDecimal(tongThanhTien) + ")";
                sqlCmd.ExecuteNonQuery();
                sqlConn.Close();
            }
            lblBaoloi.Text = "Thành công!!! \n Xin Cảm ơn";
            Session["GioHang"] = null;
        }
        catch(Exception ex)
        {
            lblBaoloi.Text = "Bị lỗi";
            throw ex;
        }

    }
}