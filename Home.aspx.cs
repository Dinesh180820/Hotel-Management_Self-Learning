using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"]!= null)
            {
                Label1.Text="Welcome," + Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("loginform.aspx");
            }
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("loginform.aspx");
        }
        protected void ButtonIdli_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "You have Successfully Ordered Idli!";
            
        }
        protected void ButtonDosai_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "You have Successfully Ordered Spl Dosai!";
            
        }
        protected void ButtonMDosai_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "You have Successfully Ordered Masal Dosai!";
            
        }
        protected void ButtonChapathi_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "You have Successfully Ordered Chapathi!";
            
        }
        protected void ButtonParotto_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "You have Successfully Ordered Parotto!";
            
        }
        protected void ButtonPanner_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "You have Successfully Ordered Panner Butter Masala!";
            
        }
        protected void ButtonGravy_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "You have Successfully Ordered Chicken Gravy!";
           
        }
        protected void ButtonVBriyani_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "You have Successfully Ordered Veg Briyani!";
            
        }
        protected void ButtonCBriyani_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "You have Successfully Ordered Chicken Briyani!";
            
        }
        protected void ButtonThali_Click(object sender, EventArgs e)
        {

            lblMessage.Text = "You have Successfully Ordered South Indian Thali!";
            
        }
    }
}