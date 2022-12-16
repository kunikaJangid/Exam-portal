<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteuser.aspx.cs" Inherits="blah_blah_blah.deleteuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DELETE USER</title>
    <style type="text/css">
        body {
            background-image: url("image.jpg");
            background-size:cover;
        }
        .auto-style1 {
            font-family: 'Open Sans', sans-serif;
            width: 100%;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align:center;
                height: 23px;
            }
        .auto-style12 {
            text-align:center;
            width:165px;
        }
        .auto-style14 {
            text-align:center;
            width:166px;
        }
        .auto-style20 {
            width:137px;
            text-align:center;
        }
        .auto-style40{
            font-family: 'Open Sans', sans-serif;
            font-size: xx-large;
            color: black;
            padding: 8px;
            text-align: center;
            border:double; 
        }
        .auto-style41 {
            font-family: 'Open Sans', sans-serif;
            width:100%;
            border-bottom:ridge;
            border-left:solid;
            border-right:solid;
        }
        .auto-style42 {
            font-family: 'Open Sans', sans-serif;
            height: 23px;
        }
        .wid {
            width:100%;
        }
        .data {
            border:double; 
            width:100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style41">
            <div class="auto-style40" style="background-color: #D6E4ED">
            Exam Portal</div>
        </div>
        <div class="auto-style41">
            <table align="center" class="wid">

                <tr>
                    <td bgcolor="#99ccff" style="color:#000099; font-size:medium; font-weight:700; background-color: #D6E4ED;">
                          <table align="center" class="auto-style4">
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
                        <td class="auto-style5">
                            <a href="adminlogout.aspx" style="color: #000000; text-decoration: none">Logout</a></td>
                    </tr>
                  </table>
                </td>
            </tr></table></div><br />
        <div class="auto-style41">
        <table align="center" class="data" style="background-color: #D6E4ED">
             <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                <td style="text-align:center">
                    <asp:DropDownList ID="userlist" runat="server" Height="22px" Width="200px" 
                        DataSourceID="SqlDataSource1" DataTextField="username"
                         DataValueField="username">
                        </asp:DropDownList>
                 </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                         ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                         SelectCommand="SELECT [username] FROM [login] WHERE([type]=@type)">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="userlist"  DefaultValue="user" Name="type"
                                  PropertyName="SelectedValue" Type="String" />
                         </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:Button ID="duser" runat="server" Text="Delete User" Width="200px"
                         style="font-weight:700" OnClick="duser_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:Label ID="msg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
        </div>
    </form>
</body>
</html>
