<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="blah_blah_blah.Main" %>

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
            border-left:solid;
            border-right:solid;
        }
        .auto-style2 {
            font-family: 'Open Sans', sans-serif;
            text-align:left;
            font-size:xx-large;
            width:81%;
            height: 51px;
            padding:3px 10px;
        }
        .auto-style5 {
            width: 99%;
            height: 408px;
        }
        .auto-style6 {
            height: 51px;
        }
        .auto-style7 {
            height: 51px;
            width: 99px;
        }
        .border {
            border:groove;
            padding:5px;
        }
        .auto-style8 {
            border:double;
            width: 100%;
            height: 408px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table style="background-color: #D6E4ED">
                <tr>
                    <td class="auto-style2">Exam Portal</td>
                    <td class="auto-style7">No Of Visitors :</td>
                    <td class="auto-style6"><asp:Label ID="lblCount" runat="server" ForeColor="Red" ></asp:Label></td>
                </tr>
            </table>
        </div><br />
        <div style="background-color: #d6e4ed" class="auto-style8">
            <table class="auto-style5" style="background-color: #d6e4eda1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center" style="font-family: 'Open Sans', sans-serif; padding:50px"><h1>Welcome to Exam Portal - Your Online Exam Partner</h1>
                        <p style="font-style: italic">Let's Create or Conduct Online Examination for You</p><br />
                        <a href="register.aspx" class="border" style="color: #000000; text-decoration: none">Register</a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="login.aspx" class="border" style="color: #000000; text-decoration: none">Login</a></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
