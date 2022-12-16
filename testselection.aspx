<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testselection.aspx.cs" Inherits="blah_blah_blah.WebForm1" %>

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
        border:double; 

    }
    .auto-style9 {
          width: 374px;
    }
    .auto-style10 {
          width: 7px;
    }
    .auto-style11 {
        font-family: 'Open Sans', sans-serif;
          width: 384px;
    }
    .auto-style12 {
          color:#ffffff;
          font-weight:bold;
          padding:0;
    }
    .auto-style13 {
          font-size:large;
          color:#ffffff;
          font-weight:bold;
          padding:0;
    }
    .auto-style40{
        font-family: 'Open Sans', sans-serif;
       font-size: 35px;
        font-weight: bold;
        color: black;
        padding: 8px;
        text-align: center;
        border:double; 
    }
    .auto-style41 {
        width:100%;
        border-right:solid;
        border-left:solid;
    }
    .auto-style42 {
        width: 375px;
    }
    .auto-style43 {
        font-family: 'Open Sans', sans-serif;
        width:100%;
        border-style: double;
        border-color: inherit;
        border-width: medium;
        color: black;
        padding: 8px;
        text-align: center;
    }
</style>
</head>
<body bgcolor="#8DB6CD">
    <form id="form1" runat="server">
        <div class="auto-style41">
            <div class="auto-style40" style="background-color: #D6E4ED">
            Exam Portal
                </div>
        </div><br />
        <div class="auto-style41">
            <table align="center" class="auto-style43" style="background-color: #D6E4ED">
                <tr>
                    <td>
                        <table align="center" class="auto-style1">
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td style="text-align:center" class="auto-style4">
                                    <b><a href="logout.aspx" style="color: #006666; text-decoration: none">LOGOUT</a></b>
                                </td>  
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align:center">
                                    <table align="center" class="auto-style42">
                                        <tr>
                                            <td class="auto-style10">&nbsp;</td>
                                            <td bgcolor="#8DB6CD" class="auto-style11">
                                                <table align="center" class="auto-style9">
                                                    <tr>
                                                        <td class="auto-style12">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style13" style="color: #000000">Select a Test</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:DropDownList ID="testlist" runat="server" Height="22px" Width="200px"
                                                                 DataSourceID="SqlDataSource1" DataTextField="settype"
                                                                 DataValueField="settype">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                                                 ConnectionString="<% ConnectionStrings: ConnectionString %>"
                                                                 SelectCommand="SELECT DISTINCT [settype] FROM [question]">
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="submit" runat="server" Text="Submit" Width="200px" 
                                                                 OnClick="button1_click" style="font-weight:700" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                           </table>
                                         </td>
                                         <td>&nbsp;</td>
                                        </tr>
                                        </table>
                                    </td>
                                </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
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
