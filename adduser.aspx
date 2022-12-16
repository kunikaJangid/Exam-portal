<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adduser.aspx.cs" Inherits="blah_blah_blah.adduser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADD USER</title>
    <style type="text/css">
        
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
        .auto-style15 {
            width:650px;
        }
        .auto-style16 {
            width:27px;
        }
        .auto-style21 {
            width: 512px;
            font-weight:bold;
        }
        .auto-style22 {
            width: 7px;
        }
        .auto-style23 {
            width: 261px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style41">
            <div class="auto-style40" style="background-color: #D6E4ED">
            Exam Portal</div>
        </div>
        <div class="auto-style41">
            <table class="auto-style40">
                <tr>
                    <td style="color:#000000; font-size:medium; font-weight:700; text-decoration: none;">
                          <table align="center" style="background-color: #D6E4ED">
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
                </tr>
                </table></div><br />
        <div class="auto-style41">
            <table align="center" class="auto-style1" style="border-color: #000000; border-style: double; background-color: #D6E4ED">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table align="center" class="auto-style15">
                            <tr>
                                <td class="auto-style16">&nbsp;</td>
                                <td >
                                    <table align="center" class="auto-style4">
                                        <tr>
                                            <td colspan="3" style="font-weight: bold; color: #000000; text-decoration: none;">
                                                Register a Student Here 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="auto-style22" style="font-weight: bold">&nbsp;</td>
                                            <td class="auto-style21">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="font-weight: bold">Username</td>
                                            <td class="auto-style22" style="font-weight: bold">:</td>
                                            <td class="auto-style21">
                                                <asp:TextBox ID="name" runat="server" Width="200px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Must enter a username" ControlToValidate="name" ForeColor="#0066FF"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="auto-style22" style="font-weight: bold">&nbsp;</td>
                                            <td class="auto-style21">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="font-weight: bold">Password</td>
                                            <td class="auto-style22" style="font-weight: bold">:</td>
                                            <td class="auto-style21">
                                                <asp:TextBox ID="pass" runat="server" Width="200px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Must enter a password" ForeColor="#0066FF"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="auto-style22" style="font-weight: bold">&nbsp;</td>
                                            <td class="auto-style21">
                                                <asp:Label ID="msg" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="auto-style22" style="font-weight: bold">&nbsp;</td>
                                            <td class="auto-style21">
                                                <asp:Button ID="submit" runat="server" Text="Register" Height="27px" Width="191px" OnClick="Button1_Click" />
                                            </td>
                                        </tr>
                                        </table>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
