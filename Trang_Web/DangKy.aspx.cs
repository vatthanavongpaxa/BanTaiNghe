using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trang_Web_DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["TENDN"] != null)
        {
            
            Response.Redirect("~/Trang_Web/SanPham.aspx");
        }
    }

    protected void btnDangky_Click(object sender, EventArgs e)
    {
        try
        {
            string tenDN = txtTenDN.Text;
            string matKhau = txtMatkhau.Text;
            string hoTen = txtHoten.Text;
            string diaChi = txtDiachi.Text;
            string dienThoai = txtDThoai.Text;
            string ngaySinh = txtNgaysinh.Text;
            int gioiTinh = int.Parse(rdlGioiTinh.SelectedItem.Value);
            string email = txtEmail.Text;

            //string cmdSQL = "INSERT INTO KHACHHANG(HoTenKH,DiaChiKH,DienThoaiKH,TenDN,MatKhau,NgaySinh,GioiTinh,Email) VALUES (N'" + hoTen + "',N'" + diaChi + "','" + dienThoai + "','" + tenDN + "','" + matKhau + "','" + ngaySinh + "'," + gioiTinh + ",'" + email + "')";
            //XLDL x = new XLDL();
            //x.sqlCmd(cmdSQL);
            thuvien tv = new thuvien("LOGINKHACHHANG", "");
            tv.docbang();
            DataRow dongMoi = tv.Dt.NewRow();
            dongMoi["HOTENKH"] = hoTen;
            dongMoi["DIACHIKH"] = diaChi;
            dongMoi["DIENTHOAIKH"] = dienThoai;
            dongMoi["TENDN"] = tenDN;
            dongMoi["MATKHAU"] = matKhau;
            dongMoi["NGAYSINH"] = ngaySinh;
            dongMoi["GIOITINH"] = gioiTinh;
            dongMoi["EMAIL"] = email;
            tv.Dt.Rows.Add(dongMoi);
            
            if(tv.capnhat() == "")
            {
                lblBaoloi.Text = "";
                Response.Redirect("~/Trang_Web/SanPham.aspx");
            }else
            {
                lblBaoloi.Text = "Nhập lại tên đăng nhập mới";
                lblBaoloi.Visible = true;
            }
            //tv.Dt.Rows.Add()

            

        }
        catch(Exception ex)
        {
            
            lblBaoloi.Text = "Thất bại";
            lblBaoloi.Visible = true;
            throw ex;

        }
    }
}