using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System.Net;
using System.Net.Mail;


namespace Registration
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string selectUser = "select user_id from [userinfo] where email = '" + email.Text.ToString() +  "' and is_active=1";
            SqlCommand selCmd = new SqlCommand(selectUser, con);
            SqlDataReader read = selCmd.ExecuteReader();
            if (read.Read())
            {
                con.Close();
                Random random = new Random();
                int myRandom = random.Next(10000000, 99999999);
                string forgot_otp = myRandom.ToString();
 

                con.Open();
                string updateAcc = "update [userinfo] set forgot_otp='"+forgot_otp+ "' where email='" + email.Text.ToString() + "' ";
                SqlCommand cmdUpdate = new SqlCommand(updateAcc, con);
                cmdUpdate.ExecuteNonQuery();
                con.Close();


                MailMessage mail = new MailMessage();
                mail.To.Add(email.Text.ToString());
                mail.From = new MailAddress("email@gmail.com");
                mail.Subject = "Reset Password link";

                string emailBody = "";
                emailBody += "<h1>Hello </h1>";
                emailBody += "Click Belo Link for Reset Your Password.<br/>";
                emailBody += "<p><a href='http://localhost:64661/resetpassword.aspx?forgot_otp=" + forgot_otp + "&email=" + email.Text.ToString() + "'>click here to Reset Password</a></p>";

                emailBody += "Thank You";

                mail.Body = emailBody;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("email@gmail.com", "pAssword");
                smtp.Send(mail);

                lblErrorMsg.Text = "Reset Password Link sent successfully";
                lblErrorMsg.ForeColor = System.Drawing.Color.Green;
                


            }
            else
            {
                lblErrorMsg.Text = "Your email is not registerred";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                con.Close();
            }

        }
    }
}