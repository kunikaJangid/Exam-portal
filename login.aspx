<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="blah_blah_blah.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-image: url("image.jpg");
            background-size:cover;
        }
        .auto-style2{
            border:double;
            font-family: 'Open Sans', sans-serif;
            width: 660px;
            height: 332px;
        }
        .auto-style3 {
            width:100%;
            text-align:center;
            border-left:solid;
            border-right:solid;
        }
        .auto-style4 {
            font-family: 'Open Sans', sans-serif;
            font-size: xx-large;
            color: black;
            padding: 8px;
            text-align: center;
            border:double;
        }       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <div class="auto-style4" style="background-color: #D6E4ED">Exam Portal</div>
        </div><br />

        <div >
            <table align="center" class="auto-style2">
     
                <tr>
                    <td colspan="3" style="background-color: #D6E4ED">&nbsp;</td>
                </tr>
                <tr>
                    <td style="background-color: #D6E4ED"></td>
                    <td style="background-color: #D6E4ED" colspan="2"></td>
                </tr>
                <tr>
                    <td style="background-color: #D6E4ED; font-weight: bold;" >Username:</td>
                    <td style="background-color: #D6E4ED" colspan="2">
                        <asp:TextBox ID="name" runat="server" Width="180px" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="background-color: #D6E4ED"></td>
                    <td class="auto-style11" style="background-color: #D6E4ED" colspan="2"></td>
                </tr>
                <tr>
                    <td style="background-color: #D6E4ED; font-weight: bold;">Password:</td>
                    <td style="background-color: #D6E4ED" colspan="2">
                        <asp:TextBox ID="pass" runat="server" TextMode="Password"  OnTextChanged="pass_TextChanged" Width="180px" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #D6E4ED"></td>
                    <td style="background-color: #D6E4ED" colspan="2"></td>
                </tr>
                <tr>
                    <td style="background-color: #D6E4ED" ></td>
                    <td style="background-color: #D6E4ED" >
                        <asp:Button ID="Button1" runat="server" BorderWidth="1px" Font-Bold="true"
                            Height="33px" Text="Login" Width="113px" OnClick="Submit_Click" />
                    </td>                  
                </tr>
                <tr>
                    <td style="background-color: #D6E4ED"></td>
                    <td style="background-color: #D6E4ED" colspan="2">
                        <asp:Label ID="msg" runat="server" ForeColor="Black" ></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
