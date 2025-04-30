using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class loginform : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.QueryString["msg"]!=null)
                {
                    string msg = Request.QueryString["msg"];
                    Response.Write("<script>alert('" + msg + "');</script>");
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtusername.Text;
            string password = txtpassword.Text;
            string constr = System.Configuration.ConfigurationManager.ConnectionStrings["UserDBConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username AND NPassword = @Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);
                con.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();

                if (count == 1)
                {
                    Session["Username"] = username;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Redirect("<script>alert('Invalid username or password');</script>");
                }
            }

                
        }
    }
}