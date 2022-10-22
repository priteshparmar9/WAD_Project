using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Threading;

namespace Project
{
   
    public partial class Home : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        

        protected void Page_Load(object sender, EventArgs e)
        {
                 

            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(constr);
                {
                    if (Session["username"] == null)
                    {
                        Response.Redirect("/Login.aspx");
                    }
                    Label2.Text = Session["username"].ToString();
                    try
                    {
                        /*Label2.Text = Session["username"].ToString();*/

                        con.Open();
                        string command = "Select * from Users where username='" + Session["username"] + "'";
                        SqlCommand cmd = new SqlCommand(command, con);

                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        Label51.Text = ds.Tables[0].Rows[0]
                            ["username"].ToString();
                        Label61.Text = ds.Tables[0].Rows[0]
                            ["email"].ToString();
                        Label11.Text = ds.Tables[0].Rows[0]
                            ["name"].ToString();
                        string bd = ds.Tables[0].Rows[0]
                            ["dob"].ToString();
                        Label31.Text = bd.Remove(10);




                    }
                    catch (Exception err)
                    {
                        Response.Write("<h1>You Have to Login for Enter this page</h1>");
                        Response.Write(err);
                    }

                    /* try
                     {





                         using (con)
                         {
                             SqlCommand cmd = new SqlCommand("SELECT * FROM chat WHERE sender=@username OR receiver=@username", con);
                             cmd.Parameters.AddWithValue("@username", Session["username"].ToString());

                             con.Open();
                             SqlDataReader rdr = cmd.ExecuteReader();
                             GridViewUsers.DataSource = rdr;
                             GridViewUsers.DataBind();
                             rdr.Close();


                         }
                     }
                     catch (Exception ex)
                     {
                         Response.Redirect(ex.Message);
                     }*/
                }
            }
          
            
           

        }

    


    protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Response.Redirect("/Login.aspx");
        }

        protected void send_message(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(constr);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            try
            {
                if (message.Text != "")
                {
                    using (con)
                    {

                        TimeSpan currentTime = DateTime.Now.TimeOfDay;


   
                        string dTime = currentTime.ToString();
                        string msgTime = dTime.Remove(8);
                        

                        SqlCommand sql = new SqlCommand("INSERT INTO chat (sender,receiver,message,time) VALUES(@username1,@username2,@message,@time)", con);
                        sql.Parameters.AddWithValue("@username1", Session["username"].ToString());
                        sql.Parameters.AddWithValue("@username2", send_to.SelectedValue);
                        sql.Parameters.AddWithValue("@message", message.Text);
                        sql.Parameters.AddWithValue("@time", msgTime);
                        sql.ExecuteNonQuery();
                        message.Text = "";

                        
                        //Response.Redirect("/Home.aspx");
                        send_to_SelectedIndexChanged(this, null);
                      
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                
            }

        }
      
        protected void send_to_SelectedIndexChanged(object sender, EventArgs e)
        {
            string msg_to = send_to.SelectedValue.ToString();
            Label13.Text = "@"+msg_to;
            
            SqlConnection con = new SqlConnection(constr);
            using (con)
            {
                SqlCommand cmd2 = new SqlCommand("SELECT sender , Message , time   FROM chat WHERE (sender=@username AND receiver=@friend) OR (sender=@friend AND receiver=@username) ", con);
                SqlCommand cmd5 = new SqlCommand("Select name from Users where username=@friend", con);
                cmd5.Parameters.AddWithValue("@friend",msg_to);
                cmd2.Parameters.AddWithValue("@username", Session["username"].ToString());
                cmd2.Parameters.AddWithValue("@friend",msg_to);
                con.Open();
                SqlDataReader rdr2 = cmd2.ExecuteReader();
                GridView1.DataSource = rdr2;
                GridView1.DataBind();
                rdr2.Close();

                SqlDataAdapter da = new SqlDataAdapter(cmd5);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Label14.Text= ds.Tables[0].Rows[0]
                        ["name"].ToString();

            }
        }

       

        protected void Button4_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            using (con)
            {
                string msg_to = send_to.SelectedValue.ToString();
                SqlCommand delcmd = new SqlCommand("Delete from chat WHERE sender=@username AND receiver=@friend", con);
                delcmd.Parameters.AddWithValue("@username", Session["username"].ToString());
                delcmd.Parameters.AddWithValue("@friend",msg_to);

                con.Open();
                delcmd.ExecuteNonQuery();
                send_to_SelectedIndexChanged(this, null);
             

            }
        }

       
    }
}