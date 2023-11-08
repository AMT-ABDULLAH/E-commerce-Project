using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SendUsingCH1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/SendUsingCH2.aspx");
        }

        public string Name
        {
            get
            {
                return txtName.Text;
            }
        }

        public string Email
        {
            get
            {
                return txtEmail.Text;
            }
        }
    }
}