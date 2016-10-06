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

    }
}