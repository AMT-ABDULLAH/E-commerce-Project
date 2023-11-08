using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page pp = Page.PreviousPage;
            if (pp != null && pp.IsCrossPagePostBack)
            {
                lblName.Text = ((TextBox)pp.FindControl("txtName")).Text;
                lblEmail.Text = ((TextBox)pp.FindControl("txtEmail")).Text;
            }
            else
            {
                lblStatus.Text = "Landed on this page using a technique other than cross page post back";
            }
        }
    }
}