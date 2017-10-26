using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trang_Web_SanPham : System.Web.UI.Page
{
    private void xuatSP()
    {
        thuvien tv = new thuvien("SANPHAM", "");
        if(Request.QueryString["MALOAI"] != null)
        {
            tv = new thuvien("", "SELECT * FROM SANPHAM WHERE MALOAI = "+ Request.QueryString["MALOAI"].ToString());
        }
        tv.docbang();
        DataListSP.DataSource = tv.Dt;
        DataListSP.DataKeyField = "MASP";
        DataListSP.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            xuatSP();
        }
    }

    protected void btGiaCao_Click(object sender, EventArgs e)
    {
        thuvien tv = new thuvien("", "SELECT * FROM SANPHAM order by GIA desc");
        if (Request.QueryString["MALOAI"] != null)
        {
            tv = new thuvien("", "SELECT * FROM SANPHAM WHERE MALOAI = " + Request.QueryString["MALOAI"].ToString()+ " ORDER BY GIA DESC");
        }
        tv.docbang();
        DataListSP.DataSource = tv.Dt;
        DataListSP.DataKeyField = "MASP";
        DataListSP.DataBind();
    }

    protected void btGiaThap_Click(object sender, EventArgs e)
    {
        thuvien tv = new thuvien("", "SELECT * FROM SANPHAM order by GIA");
        if (Request.QueryString["MALOAI"] != null)
        {
            tv = new thuvien("", "SELECT * FROM SANPHAM WHERE MALOAI = " + Request.QueryString["MALOAI"].ToString() + " ORDER BY GIA");
        }
        tv.docbang();
        DataListSP.DataSource = tv.Dt;
        DataListSP.DataKeyField = "MASP";
        DataListSP.DataBind();
    }

    protected void btMoi_Click(object sender, EventArgs e)
    {
        thuvien tv = new thuvien("", "SELECT * FROM SANPHAM order by MASP DESC");
        if (Request.QueryString["MALOAI"] != null)
        {
            tv = new thuvien("", "SELECT * FROM SANPHAM WHERE MALOAI = " + Request.QueryString["MALOAI"].ToString() + " ORDER BY MASP DESC");
        }
        tv.docbang();
        DataListSP.DataSource = tv.Dt;
        DataListSP.DataKeyField = "MASP";
        DataListSP.DataBind();
    }

    protected void btCu_Click(object sender, EventArgs e)
    {
        thuvien tv = new thuvien("", "SELECT * FROM SANPHAM order by MASP");
        if (Request.QueryString["MALOAI"] != null)
        {
            tv = new thuvien("", "SELECT * FROM SANPHAM WHERE MALOAI = " + Request.QueryString["MALOAI"].ToString() + " ORDER BY MASP");
        }
        tv.docbang();
        DataListSP.DataSource = tv.Dt;
        DataListSP.DataKeyField = "MASP";
        DataListSP.DataBind();
    }

    protected void btTim_Click(object sender, EventArgs e)
    {
        string giatritim ="N'%" + txtTim.Text + "%'";
        thuvien tv = new thuvien("", "SELECT * FROM SANPHAM WHERE TENSP LIKE " + giatritim);
        if (Request.QueryString["MALOAI"] != null)
        {
            tv = new thuvien("", "SELECT * FROM SANPHAM WHERE MALOAI = " + Request.QueryString["MALOAI"].ToString() + " AND TENSP LIKE " + giatritim );
        }
        tv.docbang();
        DataListSP.DataSource = tv.Dt;
        DataListSP.DataKeyField = "MASP";
        DataListSP.DataBind();
    }





    protected void DataListSP_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "chon")
        {
            double gia = double.Parse( e.CommandArgument.ToString());
            //Session["tong_tien"] = System.Convert.ToDouble(Session["tong_tien"]) + gia;
            Session["So_tien"] = Convert.ToDouble(Session["So_tien"])  + gia;
            Session["So_sp"] =(int) Session["So_sp"]+1;

        }
    }


}