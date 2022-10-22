using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChattingApp
{
    public partial class SignUp : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUp(object sender, EventArgs e)
        { 
            //string password = x
            //Console.WriteLine(email);
            //Response.Write(email);
            //if()

            //Response.Write("< script >alert(`Button Clicked`)</ scrtipt >");
            try
            {
                SqlConnection con = new SqlConnection(constr);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand sql = new SqlCommand("INSERT INTO USERS (username,name,email,dob, password) VALUES(@username,@name,@email,@dob,@password)", con);
                sql.Parameters.AddWithValue("@username",usernameIn.Text);
                sql.Parameters.AddWithValue("@name", name.Text);
                sql.Parameters.AddWithValue("@email", emailIn.Text);
                sql.Parameters.AddWithValue("@dob", bdate.Text);
                sql.Parameters.AddWithValue("@password", passwordIn.Text);

                sql.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Login Successful')</script>");
                Response.Redirect("/Login.aspx");                

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}