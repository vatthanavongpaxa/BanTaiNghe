using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuenMK : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btGui_ServerClick(object sender, EventArgs e)
    {
        if(txtemail.Text != "")
        {
            DataTable dt = x.getData("select * from KhachHang where Email='" + txtemail.Text + "'");
            if (dt.Rows.Count > 0)
            {
                string strString = "0123456789";
                Random random = new Random();
                int randomCharIndex = 0;
                char randomChar;
                string captcha = "";
                for (int i = 0; i < 7; i++)
                {
                    randomCharIndex = random.Next(0, strString.Length);
                    randomChar = strString[randomCharIndex];
                    captcha += Convert.ToString(randomChar);
                }
                Session["quenmk"] = captcha;
                x.thuchienlenh("update KhachHang set matKhau='" + Session["quenmk"].ToString() + "' where email='" + txtemail.Text + "'");
                var mail = new MailMessage();
                mail.From = new MailAddress("quantrivien@gmail.com", "shopone.azurewebsites.net");
                mail.To.Add(txtemail.Text);
                mail.Subject = "Lost Password";
                mail.Body = "Mật khẩu mới của email: " + txtemail.Text + "\n";
                mail.Body += "Mật Khẩu:" + Session["quenmk"].ToString();
                var client = new SmtpClient("smtp.gmail.com", 587);
                var auth = new NetworkCredential("quantrivien@gmail.com", "eubcvjvxnvrfisql");
                client.EnableSsl = true;
                client.Credentials = auth;
                try
                {
                    client.Send(mail);
                    Console.WriteLine("Successfully");
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                //xoatrang();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "alert('Mật khẩu mới đã được gửi về Email của bạn.')", true);
                txtemail.Text = "";
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "alert('Email này không tồn tại trong csdl.')", true);
                txtemail.Text = "";
                txtemail.Focus();
                //xoatrang();

                
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "alert('Vui lòng nhập vào Email.')", true);
            txtemail.Focus();
        }
    }
}