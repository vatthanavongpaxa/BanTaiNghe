using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_XemCTDonDH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] == null)
        {
            Response.Redirect("~/Admin/Admin.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                xuat_SOHD();
                
            }

        }
    }
    public void xuat_SOHD()
    {
        //string lenhSelect = "SELECT * FROM DONDATHANG";
        thuvien tv = new thuvien("DONDATHANG", "");
        tv.docbang();
        GridViewDDH.DataSource = tv.Dt;
        GridViewDDH.DataKeyNames = new string[] { "SOHD" };
        GridViewDDH.DataBind();
    }

    protected void GridViewDDH_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        
        GridViewDDH.EditIndex = -1;
        xuat_SOHD();
    }

    protected void GridViewDDH_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            //string lenhSelect = "SELECT * FROM DONDATHANG";
            thuvien tv = new thuvien("DONDATHANG","");
            tv.docbang();
            int dongHinhHanh = GridViewDDH.EditIndex;
            CheckBox chk = (CheckBox)GridViewDDH.Rows[dongHinhHanh].Cells[6].FindControl("ckbGiaoHang");
            tv.Dt.DefaultView[dongHinhHanh]["THANHCONG"] = chk.Checked;
            tv.capnhat();
            GridViewDDH.EditIndex = -1;
            xuat_SOHD();
            
        }
        catch(Exception ex)
        {
            throw ex;
        }

    }
    protected void GridViewDDH_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewDDH.EditIndex = e.NewEditIndex;
        xuat_SOHD();
        
    }

    protected void GridViewDDH_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            string soHD = GridViewDDH.DataKeys[e.RowIndex].Value.ToString();
            string lenhselect = "SELECT * FROM CTDATHANG WHERE SOHD = " + soHD;
            thuvien tv = new thuvien("", lenhselect);
            tv.docbang();
            tv.Dt.DefaultView[0].Delete();
            //thuvien tv = new thuvien("CTDATHANG", "");
            //tv.docbang();
            //DataRow dr = new DataRow()
            //int maHD = e.RowIndex;
            //tv.Dt.DefaultView[maHD].Delete();
            tv.capnhat();
            tv = new thuvien("DONDATHANG", "");
            tv.docbang();
            tv.Dt.DefaultView[e.RowIndex].Delete();
            tv.capnhat();
            //DataKeys[GridViewSP.SelectedIndex].Value.ToString();
            //DataRow dr = tv.Dt.Rows[e.RowIndex];
            //tv.Dt.Rows.Remove(dr);
            // tv.Dt.DefaultView[e.RowIndex];

            xuat_SOHD();

        }
        catch (Exception ex)
        {
            lblTongBao.Text = "Bị lỗi";
            lblTongBao.Visible = true;
            throw ex;

        }
    }

    protected void GridViewDDH_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        //string soHD = GridViewDDH.DataKeys[GridViewDDH.SelectedIndex].Value.ToString();
        string soHD = GridViewDDH.DataKeys[e.NewSelectedIndex].Value.ToString();
        string lenhselect = "SELECT * FROM CTDATHANG WHERE SOHD = " + soHD;
        thuvien tv = new thuvien("", lenhselect);
        tv.docbang();
        GridViewCT.DataSource = tv.Dt;
        GridViewCT.DataBind();

    }



}