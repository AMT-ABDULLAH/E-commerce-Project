using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ListControlExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AddListItems(DropDownList1);
                AddListItems(CheckBoxList1);
                AddListItems(RadioButtonList1);
                AddListItems(ListBox1);
                AddListItems(BulletedList1);
            }
        }

        private void AddListItems(ListControl listControl)
        {
            ListItem li1 = new ListItem("Item1", "1");
            ListItem li2 = new ListItem("Item2", "2");
            ListItem li3 = new ListItem("Item3", "3");

            listControl.Items.Add(li1);
            listControl.Items.Add(li2);
            listControl.Items.Add(li3);
        }

        private void RetrieveMultipleSelections(ListControl listControl)
        {
            foreach (ListItem li in listControl.Items)
            {
                if (li.Selected)
                {
                    Response.Write("Text = " + li.Text + ", Value = " + li.Value +
                        ", Index = " + listControl.Items.IndexOf(li).ToString() + "<br/>");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            RetrieveMultipleSelections(DropDownList1);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            RetrieveMultipleSelections(CheckBoxList1);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            RetrieveMultipleSelections(RadioButtonList1);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            RetrieveMultipleSelections(ListBox1);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            RetrieveMultipleSelections(BulletedList1);
        }
    }
}