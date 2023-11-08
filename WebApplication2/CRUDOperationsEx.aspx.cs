using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace WebApplication2
{
    public partial class CRUDOperationsEx : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBUsersConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnDelete.Enabled = false;
                FillGridView();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (btnSubmit.Text.Equals("Save"))
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();

                string insertUser = "insert into UserDetails (Username, Email, Password, Country) values (@uname, @email, @pwd, @cntry)";
                SqlCommand com = new SqlCommand(insertUser, con);
                com.Parameters.AddWithValue("@uname", txtUsername.Text);
                com.Parameters.AddWithValue("@email", txtEmail.Text);
                com.Parameters.AddWithValue("@pwd", txtPassword.Text);
                com.Parameters.AddWithValue("@cntry", ddlCountry.SelectedItem.ToString());
                com.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                string uptUser = "update UserDetails set Username=@uname, Email=@email, Password=@pwd, Country=@cntry where Id = @id";
                SqlCommand cmd = new SqlCommand(uptUser, con);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(uid.Value));
                cmd.Parameters.AddWithValue("@uname", txtUsername.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPassword.Text);
                cmd.Parameters.AddWithValue("@cntry", ddlCountry.SelectedItem.ToString());
                cmd.ExecuteNonQuery();
                con.Close();
            }
            string userid = uid.Value;
            Clear();
            if (userid == "")
            {
                lblStatus.Text = "User Registered Successfully!!!";
            }
            else
            {
                lblStatus.Text = "User Updated Successfully";
            }

            FillGridView();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();

            string delUser = "delete from UserDetails where Id = @id";
            SqlCommand cmd = new SqlCommand(delUser, con);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(uid.Value));
            cmd.ExecuteNonQuery();
            con.Close();
            Clear();
            FillGridView();
            lblStatus.Text = "User Deleted Successfully!!!";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Clear();
            FillGridView();
        }

        private void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();

            string sel = "select * from UserDetails";
            SqlDataAdapter sqa = new SqlDataAdapter(sel, con);
            DataTable dtbl = new DataTable();
            sqa.Fill(dtbl);
            con.Close();
            gvUsers.DataSource = dtbl;
            gvUsers.DataBind();
        }

        private void Clear()
        {
            uid.Value = "";
            txtUsername.Text = txtEmail.Text = txtPassword.Text = "";
            ddlCountry.SelectedIndex = 0;
            lblStatus.Text = "";
            btnSubmit.Text = "Save";
            btnDelete.Enabled = false;
        }

        protected void lnkView_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();

            string selUser = "select * from UserDetails where Id = @id";
            SqlDataAdapter sqa = new SqlDataAdapter(selUser, con);
            sqa.SelectCommand.Parameters.AddWithValue("@id", id);
            DataTable dtbl = new DataTable();
            sqa.Fill(dtbl);
            con.Close();
            uid.Value = id.ToString();
            txtUsername.Text = dtbl.Rows[0]["Username"].ToString();
            txtEmail.Text = dtbl.Rows[0]["Email"].ToString();
            ddlCountry.Text = dtbl.Rows[0]["Country"].ToString();
            btnSubmit.Text = "Update";
            btnDelete.Enabled = true;
        }
    }
}