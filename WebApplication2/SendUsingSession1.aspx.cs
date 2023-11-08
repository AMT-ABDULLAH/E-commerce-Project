using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SendUsingSession1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendData_Click(object sender, EventArgs e)
        {
            Session["Name"] = txtName.Text;
            Session["Email"] = txtEmail.Text;
            Response.Redirect("SendUsingSession2.aspx");
        }
    }
}