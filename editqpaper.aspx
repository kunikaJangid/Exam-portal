<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editqpaper.aspx.cs" Inherits="blah_blah_blah.editqpaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Paper</title>
    <style>
        body {
            background-image: url("image.jpg");
            background-size:cover;
        }
        .auto-style1 {
            font-family: 'Open Sans', sans-serif;
            width: 100%;
        }
        .auto-style2 {
            font-family:"Monotype Corsiva";
            font-size:xx-large;
            font-weight:bold;
            color:#3399ff;
            text-align:center;
            padding:0;
        }
        .auto-style3{
            font-size:large;
            font-weight:bold;
            color:#ffffff;
            font-family:"Monotype Corsiva";
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align:center;
        }
        .auto-style12 {
            text-align:center;
            width:165px;
        }
        .auto-style14 {
            text-align:center;
            width:166px;
        }
        .auto-style16 {
            text-align:center;
            font-family:"Monotype Corsiva";
            font-weight:bold;
            color:#0000ff;
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
            width:100%;
            border-bottom:ridge;
            border-left:solid;
            border-right:solid;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style41">
            <div class="auto-style40" style="background-color: #D6E4ED"> 
                Exam Portal </div>
        </div>
        <div class="auto-style41">
            <table align="center" class="auto-style40" style="background-color: #D6E4ED">
                <tr>
                    <td style="color:#000000; font-size:medium; font-weight:700; background-color: #D6E4ED; text-decoration: none;">
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
            <table align="center" class="auto-style1" style="border-color: #000000; border-style:double; background-color: #D6E4ED">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="question" runat="server" Height="50px" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="opt1" runat="server" Width="600px"></asp:TextBox>
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="opt" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="opt2" runat="server" Width="600px"></asp:TextBox>
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="opt" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="opt3" runat="server" Width="600px"></asp:TextBox>
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="opt4" runat="server" Width="600px"></asp:TextBox>
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table align="center" class="auto-style4">
                        <tr>
                            <td class="auto-style16">
                                <asp:Button ID="Button1" runat="server" Font-Bold="true" Text="Update"
                                    Width="170px" OnClick="button1_click" />
                            </td>
                            <td class="auto-style16">
                                <asp:Button ID="Button2" runat="server" Font-Bold="true" Text="Delete"
                                    Width="170px" OnClick="button1_click" />
                            </td>
                            <td class="auto-style16">
                                <asp:Button ID="Button3" runat="server" Font-Bold="true" Text="View Paper"
                                    Width="170px" OnClick="button1_click" />
                            </td>
                        </tr>
                    </table>
                </td>
                      <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
           </table>
        </div>
    </form>
</body>
</html>
