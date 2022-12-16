using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class reports : System.Web.UI.Page
{
    HttpCookie ad;
    public SqlConnection con;
    public SqlCommand cmd;
    public SqlDataReader dr;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if (ad == null)
        {
            Response.Redirect("login.aspx");
        }
        con = new SqlConnection("Data Source=.;AttachDBfile=|DataDirectory|\\OESDatabase.mdf; Integrated Security=True; Instance=True");
        con.Open();

        qry = "select*from results";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();


    }
}