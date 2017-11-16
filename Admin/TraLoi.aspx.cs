using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_TraLoi : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            if (Session["AD"] == null)
            {
                Response.Redirect("~/Admin/DangNhap.aspx");
            }
            else
            {
                DataTable dt = x.getData("select * from PhanHoi where MAPH=" + Request.QueryString["MAPH"].ToString());
                txtEmail.Text = dt.Rows[0][3].ToString();
            }
    }
    private void SendMail()
    {
        var mail = new MailMessage();
        mail.From = new MailAddress("quantrivien@gmail.com", "shopone.azurewebsites.net");
        mail.To.Add(txtEmail.Text);
        mail.Subject = "Phản hồi bình luận từ shopone.azurewebsites.net";
        mail.Body = ckeNoiDung.Text;
        ////mail.Body += "http://thegioitruyentranh.azurewebsites.net/XacNhanEmail.aspx?code=" + Session["rdnCode"] + "&tk=" + txtTK.Text;
        var client = new SmtpClient("smtp.gmail.com", 587);
        var auth = new NetworkCredential("quantrivien@gmail.com", "eubcvjvxnvrfisql");
        client.EnableSsl = true;
        client.Credentials = auth;
        try
        {
            client.Send(mail);
            Response.Redirect("~/Admin/PhanHoi.aspx");
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
        //string to = txtEmail.Text;
        //int port = 587;
        //string subject = txttieude.Text;
        //string content = txtnoidung.Text;
        //SmtpClient client = new SmtpClient();
        //client.UseDefaultCredentials = true;
        //client.EnableSsl = true;
        //client.Port = port;
        //client.Host = "smtp.gmail.com";
        //client.Credentials = new NetworkCredential("vodanhtusi@gmail.com", "eubcvjvxnvrfisql");
        //MailAddress from = new MailAddress("vodanhtusi@gmail.com", "eubcvjvxnvrfisql");
        //MailAddress toAddress = new MailAddress(to);
        //MailMessage message = new MailMessage(from, toAddress);
        //message.Body = content;
        //message.Subject = subject;
        //try
        //{
        //    client.Send(message);
        //    lbMessage.Text = "Send mail sucessfully!!!";
        //}
        //catch (Exception ex)
        //{
        //    lbMessage.Text = ex.Message;
        //}
    }

    protected void btsend_ServerClick(object sender, EventArgs e)
    {
        SendMail();
    }
}