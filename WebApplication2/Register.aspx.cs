using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WebApplication2
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBUsersConnection"].ConnectionString);
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                try {
                    con.Open();
                    string checkUser = "select count(*) from UserDetails where username='" + txtUsername.Text + "' or email='" + txtEmail.Text + "'";
                    SqlCommand com = new SqlCommand(checkUser, con);
                    temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp >= 1)
                    {
                        Response.Write("User already Exist!!!!");
                        Clear();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.ToString());
                }
                finally
                {
                    con.Close();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (temp == 0)
                {
                    con.Open();
                    string insertUser = "insert into UserDetails (Username, Email, Password, Country) values (@uname, @email, @pwd, @cntry)";
                    SqlCommand com = new SqlCommand(insertUser, con);
                    com.Parameters.AddWithValue("@uname", txtUsername.Text);
                    com.Parameters.AddWithValue("@email", txtEmail.Text);
                    com.Parameters.AddWithValue("@pwd", txtPassword.Text);
                    com.Parameters.AddWithValue("@cntry", ddlCountry.SelectedItem.ToString());
                    com.ExecuteNonQuery();
                    //Response.Redirect("UserDetails.aspx");
                    Response.Write("User Successfully Registered!!!!");
                    Clear();
                }
                
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
            finally {
                con.Close();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void Clear()
        {
            txtUsername.Text = txtEmail.Text = 
                txtPassword.Text = txtConfPassword.Text = 
                    ddlCountry.Text = "";
        }
    }
}