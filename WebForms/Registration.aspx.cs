using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = tbUsername.Text;
            string password = tbPassword.Text;
            string fullName = tbFullName.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["WebFormsConnectionString"].ToString();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Users WHERE UserName = @UserName", connection);
                checkCmd.Parameters.AddWithValue("@UserName", username);
                int count = (int)checkCmd.ExecuteScalar();

                if (count > 0)
                {
                    lblMessage.Text = "Korisničko ime se već koristi. Molimo odaberite novo.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Users (UserName, Password, FullName) VALUES (@UserName, @Password, @FullName)", connection);
                cmd.Parameters.AddWithValue("@UserName", username);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@FullName", fullName);
                cmd.ExecuteNonQuery();

                Response.Redirect("Login.aspx");
            }
        }
    }
}