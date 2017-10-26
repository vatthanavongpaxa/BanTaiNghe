using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trang_Web_ChiTiet : System.Web.UI.Page
{
    private void xuatChitiet()
    {
        if(Request.QueryString["MASP"].ToString() != "")
        {
            string masp = Request.QueryString["MASP"].ToString();
            string lenhselect = "SELECT * FROM SANPHAM WHERE MASP =" + masp;
            thuvien tv = new thuvien("",lenhselect);
            tv.docbang();
            if(tv.Sodong > 0)
            {
                hlHinh.ImageUrl = "~/Hinh/" + tv.Dt.DefaultView[0]["HINH"];
                hlHinh.NavigateUrl = "~/Hinh/" + tv.Dt.DefaultView[0]["HINH"];
                lbTen.Text = tv.Dt.DefaultView[0]["TENSP"].ToString();
                lbGia.Text = string.Format("{0:0,0 vnd}",double.Parse(tv.Dt.DefaultView[0]["GIA"].ToString()));
                lbChiTiet.Text = tv.Dt.DefaultView[0]["CHITIET"].ToString();
            }
            //Eval("GIA","{0:0,0 VNĐ}")
            // int l = 20000000;
            //lbGia.Text = string.Format("{0:0,0 vnđ}", l);
        }
        else
        {
            Response.Redirect("~/Trang_Wb/SanPham.aspx");
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            xuatChitiet();
    }

    protected void imgbtMua_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Trang_Web/GioHang.aspx?MASP="+ Request.QueryString["MASP"].ToString());
        //double gia = double.Parse(e.CommandArgument.ToString());
        //Session["tong_tien"] = System.Convert.ToDouble(Session["tong_tien"]) + gia;
       // Session["So_tien"] = Convert.ToDouble(Session["So_tien"]) + gia;
       // Session["So_sp"] = (int)Session["So_sp"] + 1;
    }
}