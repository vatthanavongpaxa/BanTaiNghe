using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Trang_Web_LienHe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ibtGui_Click(object sender, ImageClickEventArgs e)
    {
        if (txtTen.Text != "" && CKEditorControl1.Text != "")
        {
            string tenKH = txtTen.Text;
            string dThoai = txtDienThoai.Text;
            string eMail = txtEmail.Text;
            string noiDung = CKEditorControl1.Text;

            thuvien tv = new thuvien("LIENHE", "");
            tv.docbang();

            DataRow dongmoi = tv.Dt.NewRow();
            dongmoi["TENKH"] = tenKH;
            dongmoi["DTHOAI"] = dThoai;
            dongmoi["EMAIL"] = eMail;
            dongmoi["NOIDUNG"] = noiDung;

            tv.Dt.Rows.Add(dongmoi);
            string thongbao = tv.capnhat();

            if (thongbao == "")
            {
                lbThongBao.Text = "Cảm ơn bạn đã liên hệ..";
                lbThongBao.Visible = true;
            }
            else
            {
                lbThongBao.Text = "Thông báo bị lõi";
                lbThongBao.Visible = true;
            }
        }
        else
        {
            lbThongBao.Text = "Nhập dữ liệu";
            lbThongBao.Visible = true;
        }
    }
}