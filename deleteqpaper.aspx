<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteqpaper.aspx.cs" Inherits="blah_blah_blah.deleteqpaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
            background-image: url("image.jpg");
            background-size:cover;
        }
    .auto-style1 {
            width: 100%;
    }
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        font-family: 'Open Sans', sans-serif;
        text-align:center;
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
    .auto-style40 {
        font-family: 'Open Sans', sans-serif;
        font-size: xx-large;
        color: black;
        padding: 8px;
        text-align: center;

        border:double; 
    }
    .auto-style41 {
        width:100%;
        font-family: 'Open Sans', sans-serif;
        border-bottom:ridge;
        border-left:solid;
    }
    .auto-style42 {
        text-align: center;
        height: 26px;
    }
    .auto-style43 {
        text-align: center;
        height: 37px;
    }
    .auto-style44 {
        font-family: 'Open Sans', sans-serif;
        text-align: center;
        height: 23px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style41">
            <div class="auto-style40" style="background-color: #D6E4ED">
            Exam Portal
                </div>
        </div>
        <div class="auto-style41">
            <table align="center" class="auto-style1">
                <tr>
                    <td bgcolor="#99ccff" style="color:#000099; font-size:medium; font-weight:700;">
                          <table align="center" class="auto-style4" style="background-color: #D6E4ED">
                    <tr>
                        <td class="auto-style12">
                            <a href="adduser.aspx" style="color: #000000; text-decoration: none">Add User</a></td>
                        <td class="auto-style12">
                            <a href="deleteuser.aspx" style="color: #000000; text-decoration: none">Delete User</a></td>
                        <td class="auto-style12">
                            <a href="setqpaper.aspx" style="color: #000000; text-decoration: none">Set Q Paper</a></td>
                        <td class="auto-style14">
                            <a href="paperview.aspx" style="color: #000000; text-decoration: none">Preview Q Paper</a></td>
                        <td class="auto-style14">
                            <a href="deleteqpaper.aspx" style="color: #000000; text-decoration: none">Delete Q Paper</a></td>
                        <td class="auto-style14">
                            <a href="reports.aspx" style="color: #000000; text-decoration: none">View Report</a></td>
                        <td class="auto-style44">
                            <a href="adminlogout.aspx" style="color: #000000; text-decoration: none">Logout</a></td>
                    </tr>
                  </table>
                </td>
            </tr></table></div><br />
        <div class="auto-style41">
            <table class="auto-style1" style="border-style: dashed; border-color: #000000; background-color: #D6E4ED">
             <tr><td></td></tr>
            <tr>
                <td class="auto-style42">
                    <asp:DropDownList ID="testlist" runat="server" Height="20px" Width="200px" AutoPostBack="true"
                        DataSourceID="SqlDataSource1" DataTextField="settype"
                         DataValueField="settype">
                        </asp:DropDownList>
                 </td>
            </tr>
            <tr>
                <td align="center" class="auto-style43">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                         ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                         SelectCommand="SELECT [settype] FROM [Question]" ProviderName="System.Data.SqlClient">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="dqpaper" runat="server" Font-Bold="true" Text="Delete Test" Width="200px"
                         OnClick="Dqpaper_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="msg" runat="server"></asp:Label>
                </td>
            </tr>
                <tr><td></td></tr>
        </table>
        </div>
    </form>
</body>
</html>
