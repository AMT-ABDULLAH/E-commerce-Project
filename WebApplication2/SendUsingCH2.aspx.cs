using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SendUsingCH2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // On postback Context.Handler returns WebForm2
            if (!IsPostBack)
            {
                Page lastpage = (Page)Context.Handler;
                if (lastpage is SendUsingCH1)
                {
                    //Use FindControl() if public properties does not exist on the 
                    //previous page(WebForm1). FindControl() may cause 
                    //NullRefernceExceptions due to mis-spelled conrol Id's

                    //lblName.Text = ((TextBox)lastpage.FindControl("txtName")).Text;
                    //lblEmail.Text = ((TextBox)lastpage.FindControl("txtEmail")).Text;

                    //Using public properties can eliminate NullRefernceExceptions 
                    lblName.Text = ((SendUsingCH1)lastpage).Name;
                    lblEmail.Text = ((SendUsingCH1)lastpage).Email;
                }
            }

        }
    }
}