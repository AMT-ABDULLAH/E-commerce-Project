using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SendUsingApplication2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["Name"] != null)
            {
                lblName.Text = Application["Name"].ToString();
            }
            if (Application["Email"] != null)
            {
                lblEmail.Text = Application["Email"].ToString();
            }
        }
    }
}