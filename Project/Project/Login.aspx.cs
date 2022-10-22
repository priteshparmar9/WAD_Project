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
    public partial class Login : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(constr);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand sql = new SqlCommand("SELECT * FROM Users WHERE username=@username AND password=@password", con);
                sql.Parameters.AddWithValue("@username", Username.Text);
                sql.Parameters.AddWithValue("@password", Password.Text);

                SqlDataReader dr = sql.ExecuteReader();

                if (dr.HasRows)
                {
                    Response.Write("Login Successful!!!");
                }
                else
                {
                    Response.Write("Login Not Successful :((");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}