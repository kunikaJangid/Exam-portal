<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paperview.aspx.cs" Inherits="blah_blah_blah.paperview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paper View</title>
    <style>
        body {
            background-image: url("image.jpg");
            background-size:cover;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align:center;
            height: 23px;
        }
        .auto-style12 {
            text-align: center;
            width: 165px;
            height: 23px;
        }
        .auto-style14 {
            text-align: center;
            width: 166px;
            height: 23px;
        }
        .auto-style16 {
            text-align:center;
            font-weight:bold;
            color:#0000ff;
            width: 992px;
        }
        .auto-style17 {
            width:37px;
        }
        .auto-style19 {
            width:623px;
        }
        .auto-style20 {
            width:214px;
        }
        .auto-style21 {
            width:61px;
        }
        .auto-style22 {
            width:179px;
        }
        .auto-style40{
            font-family: 'Open Sans', sans-serif;
            border-style: double;
            padding: 8px;
            text-align: center;
            width:100%;
        }
        .auto-style41 {
            width:100%;
            border-bottom:ridge;
            border-left:solid;
            border-right:solid;
        }
        .auto-style42 {
            width: 100%;
        }
        .auto-style43 {
            font-family: 'Open Sans', sans-serif;
            border-style: double;
            font-size:xx-large;
            color: black;
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style41">
            <div class="auto-style43" style="background-color: #D6E4ED;">
            Exam Portal</div>
        </div>
        <div class="auto-style41">
            <table class="auto-style40">               
                <tr>
                    <td bgcolor="#99ccff" style="color:#000099; font-weight: bold; text-decoration: none; color: #000000; text-decoration: none; color: #000000; background-color: #D6E4ED;">
                          <table align="center" class="auto-style4">
                    <tr>
                        <td class="auto-style12">
                            <a href="adduser.aspx" style="color: #000000; text-decoration: none; font-weight: bold;">Add User</a></td>
                        <td class="auto-style12">
                            <a href="deleteuser.aspx" style="color: #000000; text-decoration: none; font-weight: bold;">Delete User</a></td>
                        <td class="auto-style12">
                            <a href="setqpaper.aspx" style="color: #000000; text-decoration: none; font-weight: bold;">Set Q Paper</a></td>
                        <td class="auto-style14">
                            <a href="paperview.aspx" style="color: #000000; text-decoration: none; font-weight: bold;">Preview Q Paper</a></td>
                        <td class="auto-style14">
                            <a href="deleteqpaper.aspx" style="color: #000000; text-decoration: none; font-weight: bold;">Delete Q Paper</a></td>
                        <td class="auto-style14">
                            <a href="reports.aspx" style="color: #000000; text-decoration: none; font-weight: bold;">View Report</a></td>
                        <td class="auto-style5">
                            <a href="adminlogout.aspx" style="color: #000000; text-decoration: none; font-weight: bold;">Logout</a></td> 
                    </tr>
                  </table>
                </td>
            </tr></table></div><br />
        <div class="auto-style41"> 
            <table class="auto-style40">
            <tr>
                <td class="auto-style42" style="background-color: #D6E4ED">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16" style="color: #000000; background-color: #D6E4ED;">
                    Select a Question Paper to Preview 
                </td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #D6E4ED">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED;" class="auto-style16">
                    <asp:DropDownList ID="testlist" runat="server" AutoPostBack="true"
                         DataSourceID="SqlDataSource1" DataTextField="settype" 
                        DataValueField="settype" Height="24px" Width="170px" OnSelectedIndexChanged="testlist_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="center" class="auto-style42" style="background-color: #D6E4ED">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                         SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY [settype]">
                        </asp:SqlDataSource>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #D6E4ED">
                    <table align="center" class="auto-style44">
                        <tr>
                            <td>&nbsp;</td>
                            <td bgcolor="#95caeb">
                                <table align="center" class="auto-style40">
                                    <tr>
                                        <td class="auto-style17">QID</td>
                                        <td class="auto-style19">QUESTION</td>
                                        <td class="auto-style20">CHOICES</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <%
                                        while(dr.Read())
                                        {%><%ans = Convert.ToInt16(dr.GetValue(7)); %>
                                        <%if(ans==1)
                                            {
                                                CheckBox1.Checked = true;
                                                CheckBox2.Checked = false;
                                                CheckBox3.Checked = false;
                                                CheckBox4.Checked = false;
                                                }%>
                                                <% 
                                                    if(ans==2)
                                            {
                                                CheckBox1.Checked= false;
                                                CheckBox2.Checked= true;
                                                CheckBox3.Checked= false;
                                                CheckBox4.Checked= false;
                                                }
                                                    %>
                                            <% 
                                                    if(ans==3)
                                            {
                                                CheckBox1.Checked= false;
                                                CheckBox2.Checked= false;
                                                CheckBox3.Checked= true;
                                                CheckBox4.Checked= false;
                                                }
                                                    %>
                                            <% 
                                                if(ans==4)
                                                {
                                                    CheckBox1.Checked= false;
                                                    CheckBox2.Checked= false;
                                                    CheckBox3.Checked= false;
                                                    CheckBox4.Checked= true;
                                                    }
                                                    %>
                                    <tr>
                                        <td bgcolor="white" class="auto-style17">
                                            <%=dr.GetValue(0) %></td>
                                        <td bgcolor="white" class="auto-style19">
                                            <%=dr.GetValue(1) %></td>
                                        <td bgcolor="white" class="auto-style20">
                                            <table align="center" class="auto-style4">
                                                <tr>
                                                    <td class="auto-style22">
                                                        <%=dr.GetValue(3) %></td>
                                                    <td>
                                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style22">
                                                        <%=dr.GetValue(4) %></td>
                                                    <td>
                                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style22">
                                                        <%=dr.GetValue(5) %></td>
                                                    <td>
                                                        <asp:CheckBox ID="CheckBox3" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style22">
                                                        <%=dr.GetValue(6) %></td>
                                                    <td>
                                                        <asp:CheckBox ID="CheckBox4" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>    
                                        </td>
                                        <td bgcolor="white"><a href="editqpaper.aspx?settype=<%Response.Write(dr.GetValue(2));%>&qid=<%Response.Write(dr.GetValue(0));%>"><b style="color: #000000">Edit<br/>or Delete</b> </a>
                                        </td>
                                    </tr><% }%>
                                    <tr>
                                        <td bgcolor="white" colspan="4">
                                            <table align="center" class="auto-style4">
                                                <tr>
                                                    <td class="auto-style21">&nbsp;</td>
                                                    <td>
                                                        <asp:Button ID="Button1" runat="server" Font-Bold="true" Text="Add Question"
                                                            Width="200px" OnClick="button1_click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                            </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #D6E4ED">&nbsp;
                </td>
            </tr>
           </table>
        </div>
    </form>
</body>
</html>
