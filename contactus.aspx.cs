using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient sendmail = new SmtpClient();
            sendmail.Host = "smtp.gmail.com";
            sendmail.Port = 587;
            sendmail.EnableSsl = true;

            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
            userpass.UserName = "bioclothingbrunei@gmail.com";
            userpass.Password = "biobrunei2016";

            sendmail.Credentials = userpass;

            MailMessage msg = new MailMessage(txtemail.Text, "bioclothingbrunei@gmail.com");

            msg.Subject = "Message from " + txtfname.Text + " " + txtlname.Text;
            msg.Body = "Subject:" + txtsubject.Text + "\n";
            msg.Body += "Email:" + txtemail.Text + "\n";
            msg.Body += "Message:" + txtmessage.Text;

            sendmail.Send(msg);
            Literal1.Text = "Your message was successfully sent.";
            txtemail.Text = "";
            txtfname.Text = "";
            txtlname.Text = "";
            txtsubject.Text = "";
            txtmessage.Text = "";

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}