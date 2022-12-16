using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class paperview : System.Web.UI.Page
{
    public SqlConnection con;
    public SqlCommand cmd;
    public SqlDataReader dr;
    public string qry;

    string settype;
    public int ans;
    HttpCookie ad;
    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if (ad == null)
        {
            Response.Redirect("login.aspx");
        }
        con = new SqlConnection("Data Source=.;AttachDBfile=|DataDirectory|\\OESDatabase.mdf; Integrated Security=True; Instance=True");
        con.Open();

        settype = System.Convert.ToString(Request.QueryString["settype"]);
        HiddenField1.Value = testlist.SelectedValue;
        qry = "select*from question where settype='" + HiddenField1.Value + "' order by qid";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();
    }
    protected void button1_click(object sender, EventArgs e)
    {
        Response.Redirect("setqpaper.aspx");
    }
    protected void testlist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}