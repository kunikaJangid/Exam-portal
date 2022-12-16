<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setqpaper.aspx.cs" Inherits="blah_blah_blah.setqpaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SET PAPER</title>
    <style>
        body {
            background-image: url("image.jpg");
            background-size:cover;
        }
        .auto-style1 {
            font-family: 'Open Sans', sans-serif;
            width: 100%;
            border:double;
            background:white;
        }
        .auto-style4 {
            font-family: 'Open Sans', sans-serif;
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
            width:100%;    
        }
        .auto-style40 {
            font-family: 'Open Sans', sans-serif;
            background:white;
            font-size: xx-large;
            color: black;
            padding: 8px;
            text-align: center;
            border:double; 
        }
        .auto-style41 {
            width:100%;
            border-bottom:ridge;
            border-left:solid;
            border-right:solid;
        }
    </style>
</head>
<body bgcolor="#8DB6CD">
    <form id="form1" runat="server">
        <div class="auto-style41">
            <div class="auto-style40" style="background-color: #D6E4ED">
            Exam Portal
                </div>
        </div>
            <div class="auto-style41">
                <table align="center" class="auto-style40">
                <tr>
                    <td style="font-size:medium; font-weight:700; background-color: #D6E4ED;">
                          <table align="center" class="auto-style4">
                    <tr>
                        <td class="auto-style12">
                            <a href="adduser.aspx" style="color: #000000; text-decoration: none">Add User</a></td>
                        <td class="auto-style12">
                            <a href="deleteuser.aspx" style="color: #000000; text-decoration: none">Delete User</a></td>
                        <td class="auto-style12">
                            <a href="setqpaper.aspx" style="color: #000000; text-decoration: none">Set Q Paper</a></td>
                        <td class="auto-style14">
                            <a href="paperview.aspx" style="color: #000000; text-decoration: none;">Preview Q Paper</a></td>
                        <td class="auto-style14">
                            <a href="deleteqpaper.aspx" style="color: #000000; text-decoration: none">Delete Q Paper</a></td>
                        <td class="auto-style14">
                            <a href="reports.aspx" style="color: #000000; text-decoration: none">View Report</a></td>
                        <td class="auto-style5">
                            <a href="adminlogout.aspx" style="color: #000000; text-decoration: none">Logout</a></td> 
                    </tr>
                  </table>
                </td>
            </tr></table></div> <br />
        <div class="auto-style41">
                <table align="center" class="auto-style1">
            <tr>
                <td style="background-color: #D6E4ED">
                    <asp:DropDownList ID="testlist" runat="server" Height="20px" Width="150px"
                         AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="settype"
                         DataValueField="settype">
                        </asp:DropDownList>
                    <asp:TextBox ID="testname" runat="server" Visible="false"></asp:TextBox>&nbsp;
                    <asp:Button ID="ntest" runat="server" Font-Bold="true" Text="New Test"
                        Width="88px" OnClick="ntest_Click" />&nbsp;
                    <asp:Label ID="msg1" runat="server" ForeColor="#3366FF"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                           SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY[settype]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">
                    <asp:TextBox ID="question" runat="server" Height="50px" Width="600px"
                         Font-Bold="true"></asp:TextBox>
                    <asp:Label ID="msg2" runat="server" ForeColor="#3366FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">
                    <asp:TextBox ID="opt1" runat="server" Width="600px"></asp:TextBox>
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="opt" />
                    <asp:Label ID="msg3" runat="server" ForeColor="#3366FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">
                    <asp:TextBox ID="opt2" runat="server" Width="600px"></asp:TextBox>
                    <asp:RadioButton ID="RadioButton2" runat="server" Checked="true" GroupName="opt" />
                    <asp:Label ID="msg4" runat="server" ForeColor="#3366FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">
                    <asp:TextBox ID="opt3" runat="server" Width="600px"></asp:TextBox>
                    <asp:RadioButton ID="RadioButton3" runat="server" Checked="true" GroupName="opt" />
                    <asp:Label ID="msg5" runat="server" ForeColor="#3366FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">
                    <asp:TextBox ID="opt4" runat="server" Width="600px"></asp:TextBox>
                    <asp:RadioButton ID="RadioButton4" runat="server" Checked="true" GroupName="opt" />
                    <asp:Label ID="msg6" runat="server" ForeColor="#3366FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">
                    <asp:Label ID="msg7" runat="server" ForeColor="#3366FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">
                    <table align="center" class="auto-style16">
                        <tr>
                            <td>
                                <asp:Button ID="submit" runat="server" Font-Bold="true" Text="Add Question" OnClick="button2_click" />
                            </td>
                            <td>
                                <asp:Button ID="paperview" runat="server" Font-Bold="true" Text="View Paper" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">&nbsp</td>
                
            </tr>
            </table>
        </div>
    </form>
</body>
</html>
