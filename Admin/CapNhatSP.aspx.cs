using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_CapNhatSP : System.Web.UI.Page
{
    public void Xuat_Gird()
    {
        thuvien tv = new thuvien("SANPHAM", "");
        tv.docbang();
        GridViewSP.DataSource = tv.Dt;
        GridViewSP.DataKeyNames = new string[] {"MASP"};
        GridViewSP.DataBind();

    }
    public void Xuat_DDL()
    {
        thuvien tv = new thuvien("LOAISANPHAM", "");
        tv.docbang();
        DropDownListLoai.DataSource = tv.Dt;
        DropDownListLoai.DataTextField = "TENLOAI";
        DropDownListLoai.DataValueField = "MALOAI";
        DropDownListLoai.DataBind();
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["USERNAME"] == null)
        {
            Response.Redirect("~/Admin/Admin.aspx");
        }
        else
        {
            if(!IsPostBack)
            {
                Xuat_Gird();
                Xuat_DDL();
                ViewState["sua"] = false;
            }
            
        }
    }

    protected void GridViewSP_SelectedIndexChanged(object sender, EventArgs e)
    {
        string maSP = GridViewSP.DataKeys[GridViewSP.SelectedIndex].Value.ToString();
        string lenhselect = "SELECT * FROM SANPHAM WHERE MASP = " + maSP;
        thuvien tv = new thuvien("",lenhselect);
        tv.docbang();

        txtTenSP.Text = tv.Dt.DefaultView[0]["TENSP"].ToString();
        txtGia.Text = tv.Dt.DefaultView[0]["GIA"].ToString();
        DropDownListLoai.SelectedValue = tv.Dt.DefaultView[0]["MALOAI"].ToString();
        CKEditorControl1.Text = tv.Dt.DefaultView[0]["CHITIET"].ToString();
        ImageHinh.ImageUrl ="~/Hinh/" + tv.Dt.DefaultView[0]["HINH"].ToString();
        ImageHinh.Visible = true;
        lbHinh.Text = tv.Dt.DefaultView[0]["HINH"].ToString();
        ViewState["sua"] = true;
        ibtCanCel.Visible = true;
    }


    protected void ibtSave_Click(object sender, ImageClickEventArgs e)
    {
       
        thuvien tv = new thuvien("SANPHAM","");
        tv.docbang();

        string tenSP = txtTenSP.Text;
        string gia = txtGia.Text;
        string hinh = lbHinh.Text;
        if(FileUploadHinh.FileName != "")
        {
            hinh = FileUploadHinh.FileName;
            FileUploadHinh.SaveAs(Server.MapPath("~/Hinh/" + hinh));
        }
        string loai = DropDownListLoai.SelectedValue.ToString();
        string chiTiet = CKEditorControl1.Text;
        
        if ((bool)ViewState["sua"] == true)
        {
            int dongHinhHanh = GridViewSP.SelectedIndex;
            tv.Dt.DefaultView[dongHinhHanh]["TENSP"] = tenSP;
            tv.Dt.DefaultView[dongHinhHanh]["HINH"] = hinh;
            tv.Dt.DefaultView[dongHinhHanh]["GIA"] = gia;
            tv.Dt.DefaultView[dongHinhHanh]["MALOAI"] = loai;
            tv.Dt.DefaultView[dongHinhHanh]["CHITIET"] = chiTiet;
            tv.capnhat();
            ViewState["sua"] = false;
            Xuat_Gird();

            txtTenSP.Text = "";
            txtGia.Text = "";
            CKEditorControl1.Text = "";
            ImageHinh.ImageUrl = "";
            ImageHinh.Visible = false;
            lbHinh.Text = "";
            ibtCanCel.Visible = false;
        }
       else
        {
            DataRow dongmoi = tv.Dt.NewRow();
            dongmoi["TENSP"] = tenSP;
            dongmoi["GIA"] = gia;
            dongmoi["HINH"] = hinh;
            dongmoi["MALOAI"] = loai;
            dongmoi["CHITIET"] = chiTiet;
            
            tv.Dt.Rows.Add(dongmoi);
            
            string thongbao = tv.capnhat();
            if (thongbao == "")
            {
                lbThongBao.Text = "Cập nhật thành công"; 
                lbThongBao.Visible = true;
                Xuat_Gird();
                txtTenSP.Text = "";
                txtGia.Text = "";
                CKEditorControl1.Text = "";
                ImageHinh.ImageUrl = "";
                ImageHinh.Visible = false;
                lbHinh.Text = "";
            }
            else
            {
                lbThongBao.Text = "Cập nhật bị lỗi";
                lbThongBao.Visible = true;
            }
        }

    }

    protected void ibtCanCel_Click(object sender, ImageClickEventArgs e)
    {
        txtTenSP.Text = "";
        txtGia.Text = "";
        CKEditorControl1.Text = "";
        ImageHinh.ImageUrl = "";
        ImageHinh.Visible = false;
        lbHinh.Text = "";
        ibtCanCel.Visible = false;
    }

    protected void GridViewSP_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            
            thuvien tv = new thuvien("SANPHAM","");
            tv.docbang();

            //DataRow dr = tv.Dt.Rows[e.RowIndex];
            //tv.Dt.Rows.Remove(dr);
            tv.Dt.Rows[e.RowIndex].Delete();
            tv.capnhat();
            Xuat_Gird();

        }
        catch(Exception ex)
        {
            lbThongBao.Text = "Bi loi";
            throw ex;
            
        }

    }



    protected void GridViewSP_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex < 0)
            return;
        if (GridViewSP.EditIndex == -1)
        {
            Button nut_xoa = new Button();
            nut_xoa = (Button)e.Row.Cells[6].Controls[0];
            nut_xoa.OnClientClick = "if(!confirm('Ban Dong Y Xoa Khong ?'))return false";
        }
    }

}
