using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private bool IsPasswordStrong(string password)
        {
            if (password.Length < 8)
                return false;

            bool hasUpper = false;
            bool hasLower = false;
            bool hasDigit = false;
            bool hasSpecial = false;

            foreach (char c in password)
            {
                if (char.IsUpper(c)) hasUpper = true;
                else if (char.IsLower(c)) hasLower = true;
                else if (char.IsDigit(c)) hasDigit = true;
                else hasSpecial = true;
            }

            return hasUpper && hasLower && hasDigit && hasSpecial;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string fullName = TextBox1.Text;
                string email = TextBox2.Text;
                string phone = TextBox3.Text;
                string country = TextBox4.Text;
                string username = TextBox5.Text;
                string password = TextBox6.Text;
                string confirmPassword = TextBox7.Text;
                string countrycode = TxtCode.Text;

                if (password != confirmPassword)
                {
                    Response.Write("<script>alert('Passwords do not match');</script>");
                    return;
                }

                if (!IsPasswordStrong(password))
                {
                    Response.Write("<script>alert('Password must be at least 8 characters long and include uppercase, lowercase, number, and special character.');</script>");
                    return;
                }


                string constr = System.Configuration.ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    string query = "INSERT INTO Users (FullName,Email,Phone,Country,Username,NPassword) VALUES (@FullName,@Email,@Phone,@Country,@Username,@NPassword)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@FullName", fullName);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Phone", phone);
                    cmd.Parameters.AddWithValue("@Country", country);
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@NPassword", password);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("loginform.aspx? msg=Registration Successful");
                }
            }
            else
            {

                Response.Write("<script>alert('Please Fix the Validation Error.');</script>");
            }
            
            
        }
        protected void CheckUsernameExists(object source, ServerValidateEventArgs args)
        {
            string username = TextBox5.Text;
            string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT Count(*) FROM Users WHERE Username = @Username", con);
                cmd.Parameters.AddWithValue("@Username", username);
                int count = (int)cmd.ExecuteScalar();
                args.IsValid = (count == 0);
            }
        }
    }
}
