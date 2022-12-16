using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class adduser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    HttpCookie ad;
    string qry;
    string cqry;
    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if (ad == null)
        {
            Response.Redirect("login.aspx");
        }
        con = new SqlConnection("Data Source=.;AttachDBfile=|DataDirectory|\\OESDatabase.mdf; Integrated Security=True; Instance=True");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cqry = "select*from login where username='" + nameof.text + "'";
        cmd = new SqlCommand(cqry, con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            msg.Text = "Username already exist";
        }
        else
        {
            con.Close();
            con.Open();
            qry = "Insert into login values('" + name.Text + "','" + pass.Text + "','user')";
            cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            msg.Text = "Username Successfully added";
            name.Text = "";
            pass.Text = "";
        }
    }
}
