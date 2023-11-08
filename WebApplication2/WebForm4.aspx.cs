using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItem maleListItem = new ListItem("Male", "1");
                ListItem femaleListItem = new ListItem("Female", "2");

                DropDownList1.Items.Add(maleListItem);
                DropDownList1.Items.Add(femaleListItem);
            }
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            StringBuilder sbUserChoices = new StringBuilder();
            if (GraduateCheckBox.Checked)
            {
                sbUserChoices.Append(GraduateCheckBox.Text);
            }
            if (PostGraduateCheckBox.Checked)
            {
                sbUserChoices.Append(", " + PostGraduateCheckBox.Text);
            }
            if (DoctrateCheckBox.Checked)
            {
                sbUserChoices.Append(", " + DoctrateCheckBox.Text);
            }
            Response.Write("Your Selections: " + sbUserChoices.ToString());
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in ListBox1.Items)
            {
                if (li.Selected)
                {
                    Response.Write("Text = " + li.Text + ", ");
                    Response.Write("Value = " + li.Value + ", ");
                    Response.Write("Index = " + ListBox1.Items.IndexOf(li).ToString());
                    Response.Write("<br/>");
                }
            }
        }
    }
}