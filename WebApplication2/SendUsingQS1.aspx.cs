﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SendUsingQS1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendData_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SendUsingQS2.aspx?"+
                "UserName="+txtName.Text.Replace("&","%26")+
                "&UserEmail="+ txtEmail.Text.Replace("&", "%26"));
        }
    }
}