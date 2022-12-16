using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;


public partial class panel : System.Web.UI.Page
{
    HttpCookie ck;
    public SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    public SqlCommand rcmd;
    public SqlDataReader rdr;

    SqlCommand scmd;

    SqlCommand ccmd;
    SqlDataReader cdr;

    public string rqry;
    string qry;
    string sqry;
    string uname;
    public string testtype;
    public int ans;
    public int n = 0;
    public int count;
    public int marks = 0;
    public int totalmarks;
    public int qid;
    public int c;
    protected void Page_Load(object sender, EventArgs e)
    {
        ck = Request.Cookies["cook"];
        if (ck == null)
        {
            Response.Redirect("login.aspx");
        }
        uname = ck.Value["un"].ToString();

        testtype = System.Convert.ToString(Request.QueryString["testtype"]);
        count = System.Convert.ToInt16(Request.QueryString["count"]);
        marks = System.Convert.ToInt16(Request.QueryString["marks"]);
        if (count == 0)
        {
            count = 1;
        }
        time.Text = DateTime.Now.ToString();
        con = new SqlConnection("Data Source=.;AttachDBfile=|DataDirectory|\\OESDatabase.mdf; Integrated Security=True; Instance=True");
        con.Open();

        qry = "select*from question where settype='" + testtype + "'";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            n = n + 1;
        }
        con.Close();
        if (count <=n)
        {
            msg.Text = count + "of" + n;
        }
        else
        {
            msg.Text = "This is your last question";
        }
        con.Open();
        rqry = "selcet*from question where settype='" + testtype + "'order by qid";
        rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
        rdr = rcmd.ExecuteReader();
        c = 1;
        while (rdr.Read())
        {
            if(c!=count)
            {
                c = c + 1;
            }
            else
            {
                qid = Convert.ToInt16(rdr.GetValue(0));
                c = c + 1;
            }
            else
            {
                qid = Convert.ToInt16(rdr.GetValue(0));
                c = c + 1;
            }
        }
        con.Close();
    }
    protected void next_click(object sender, EventArgs e)
    {
        count = count - 1;
        Response.Redirect("panel.aspx?testtype=" + testtype + "&count=" + count);
    }
    protected void next_click(object sender, EventArgs e)
    {
        con.Close();
        if (count < n)
        {
            if (RadioButton1.Checked == true)
            {
                ans = 1;
            }
            if (RadioButton2.Checked == true)
            {
                ans = 2;
            }
            if (RadioButton3.Checked == true)
            {
                ans = 3;
            }
            if (RadioButton4.Checked == true)
            {
                ans = 4;
            }
            con.Open();
            ccmd = new SqlCommand("select*from question where qid" + qid + "and ans=" + ans, con);
            cdr = ccmd.ExecuteReader();
            if (cdr.HasRows)
            {
                marks = marks + 1;
            }
            con.Close();
            count = count + 1;
            Response.Redirect("panel.aspx?testtype" + testtype + "&count" + count + "&marks" + marks);
        }
        else
        {
            msg.Text = "this was last question";
        }
        
    }
    protected void finish_click(object sender, EventArgs e)
    {
        con.Close();
        con.Open();
        totalmarks = n;
        string date = DateTime.Now.ToString();
        sqry = "insert into results values('" + uname + "','" + date + "','" + testtype + "','" + marks + "," + totalmarks + ")";
        scmd = new SqlCommand(sqry, con);
        scmd.ExecuteNonQuery();
        msg.Text = "Wish You All Best For Your Result";
        con.Close();
        Response.Write("<script>alert('Exam successful Submit')</script");
        Response.Redirect("logout.aspx");
    }
}