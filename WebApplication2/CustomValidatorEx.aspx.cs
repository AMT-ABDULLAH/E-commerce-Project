using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class CustomValidatorEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblStatus.ForeColor = System.Drawing.Color.Green;
                lblStatus.Text = "Data Saved Successfully";
            }
            else
            {
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "Data is not saved";
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value == "")
            {
                args.IsValid = false;
            }
            else
            {
                int Number;
                bool isNumber = int.TryParse(args.Value, out Number);
                if (isNumber && Number >= 0 && (Number % 2) == 0)
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                }
            }
        }
    }
}