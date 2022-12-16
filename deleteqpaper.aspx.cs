using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class deleteqpaper : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    HttpCookie ad;
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if (ad == null)
        {
            Response.Redirect("login.aspx");
        }
        con = new SqlConnection("Data Source=.;AttachDBfile=|DataDirectory|\\EPdata.mdf; Integrated Security=True; Instance=True");
        con.Open();

    }
    protected void Dqpaper_click(object sender, EventArgs e)
    {
        con.Close();

        con.Open();
        qry = "delete from question where settype='" + testlist.SelectedValue + "'";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("deleteqpaper.aspx");
    }
}