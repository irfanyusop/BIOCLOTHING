using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    SqlConnection database;
    SqlCommand command;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {
        opendatabase();

    }

    protected void opendatabase()
    {
        try
        {
            database = new SqlConnection(ConfigurationManager.ConnectionStrings["BioDB"].ConnectionString);
            database.Open();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        check_ic(txtic.Text, txtpassword.Text);
       
    }

    public void check_ic(String ic,String pass)
    {
      
        try
        {
            command = new SqlCommand("SELECT * FROM userinformation WHERE icnumber='" + ic + "' AND userpassword='" + pass +"'", database);
            reader = command.ExecuteReader();
            
            if (reader.HasRows)
            {
                while (reader.Read()) { 
                if (reader[6].ToString().Equals("admin"))
                {
                    Response.Write("<script> alert('Login successful (ADMIN). Press OK to continue') </script>");
                    Response.Write("<script> window.location.href='admin.aspx' </script>");
                    Session["admin"] = ic;
                }
                else
                {
                    Response.Write("<script> alert('Login successful (GUEST). Press OK to continue') </script>");
                    Response.Write("<script> window.location.href='members.aspx' </script>");
                    Session["guest"] = ic;
                }
                }
            }
            else
            {
                Response.Write("<script> alert('Login Failed!. Please check your ic or password') </script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
      
    }
}