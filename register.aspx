<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="blah_blah_blah.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-image: url("image.jpg");
            background-size:cover;
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
        .auto-style5 {
            font-family: 'Open Sans', sans-serif;
            width: 100%;
            background-color: #D6E4ED;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 199px;
        }
        .auto-style8 {
            height: 23px;
            width: 199px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            width: 251px;
        }
        .auto-style11 {
            height: 23px;
            width: 251px;
        }
        .auto-style12 {
            width: 251px;
            height: 22px;
        }
        .auto-style13 {
            width: 199px;
            height: 22px;
        }
        .auto-style14 {
            height: 22px;
        }
        .auto-style15 {
            width: 251px;
            height: 40px;
        }
        .auto-style16 {
            width: 199px;
            height: 40px;
        }
        .auto-style17 {
            height: 40px;
        }
        .size{
            width:100%;
            border:double;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <div class="auto-style4" style="background-color: #D6E4ED">Exam Portal</div>
        </div><br />
        <div class="auto-style5">
        <table class="size" style="border-right-style: ridge; border-left-style: ridge; border-color: #000000; font-weight: bold;">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Username :</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px" CssClass="auto-style9"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username is Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style8"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style10">Email :</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email is Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator runat="server" ErrorMessage="You must enter the valid Email ID" ForeColor="#CC0000" ControlToValidate="TextBox2" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Password :</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password is Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Confirm-Password</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox4" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Cofirm Password is Rquired" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Both Password must be same" ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Height="35px" Text="Register" Font-Bold="true" Width="86px" OnClick="Button1_Click"/>&nbsp;&nbsp;
                    <input id="Reset1"  style="text-transform: capitalize; Width:86px; Height:35px; font-weight: bold;"  type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
