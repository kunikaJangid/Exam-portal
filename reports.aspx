<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reports.aspx.cs" Inherits="blah_blah_blah.reports" %>

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
            font-family: 'Open Sans', sans-serif;
            width: 100%;
        }
        .auto-style4 {
            font-family: 'Open Sans', sans-serif;
            width: 100%;
        } 
        .auto-style5 {
            text-align:center;
        }
        .auto-style6 {
            width:100%;    
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
        .auto-style21 {
            width:244px;
            text-align:center;
        }
        .auto-style22 {
            width:190px;
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
            width:100%;
            font-family: 'Open Sans', sans-serif;
            border-bottom:ridge;
            border-left:solid;
            border-right:solid;
        }
        .auto-style42 {
            height: 23px;
        }
        .auto-style43 {
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
        </div>
        <div class="auto-style41">
            <table class="auto-style43">               
                <tr>
                    <td  style="background-color: #D6E4ED; font-weight: bold; text-decoration: none; color: #000000; text-decoration: none; ">
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
                </tr>
             </table></div><br />
        <div style="border-left:solid; border-right:solid;">
            <table align="center" class="auto-style1"> 
            <tr>
                <td style="background-color: #D6E4ED" class="auto-style42"></td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #D6E4ED"></td>
            </tr>
            <tr>
                <td style="border: 1px solid #000000; background-color: #95caeb;">
                    <table align="center" class="auto-style6">
                        <tr>
                            <td class="auto-style22">User</td>
                            <td class="auto-style22">Date</td>
                            <td class="auto-style21">Test Name</td>
                            <td class="auto-style20">Marks</td>
                            <td class="auto-style5">Total Marks</td>
                        </tr>
                        <%
                            while(dr.Read())
                            { 
                                %>
                            <tr style="border-width: 3px">
                                <td  class="auto-style22" ><%=dr.GetValue(0) %></td>
                                <td  class="auto-style22" ><%=dr.GetValue(1) %></td>
                                <td  class="auto-style21" ><%=dr.GetValue(2) %></td>
                                <td  class="auto-style20" ><%=dr.GetValue(3) %></td>
                                <td  class="auto-style5"><%=dr.GetValue(4) %></td>
                            </tr>
                        <%
                            }
                            con.close();
                            %>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="background-color: #D6E4ED">&nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#3333ff" style="background-color: #D6E4ED">&nbsp;</td>
            </tr>
            </table>
        </div>
    </form>
</body>
</html>
