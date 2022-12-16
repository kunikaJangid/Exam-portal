  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="blah_blah_blah.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <style type="text/css">
        body {
            background-image: url("image.jpg");
            background-size:cover;
            
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
        .auto-style40 {
            font-family: 'Open Sans', sans-serif;
            border-style: double;
            border-color: black;
            border-width: medium;
            font-size: xx-large;
            color: black;
            padding: 8px;
            text-align: center;
        }
        .auto-style41 {
            width:100%;
            border-bottom:ridge;
            border-left:solid;
            border-right:solid;
        }
        .auto-style42 {
            width: 100%;
        }
        .size {
            font-family: 'Open Sans', sans-serif;
            text-align:center;
            padding:5px;
        }
        .image {
            text-align:center;
            padding:5%;
        }
        
        .auto-style43 {
            width: 63px;
            height: 63px;
        }
        .auto-style44 {
            width: 59px;
            height: 60px;
        }
        .auto-style45 {
            width: 71px;
            height: 75px;
        }
        .auto-style46 {
            width: 64px;
            height: 61px;
        }
        .auto-style47 {
            width: 67px;
            height: 64px;
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
             <td style="color:#000099; font-size:medium; font-weight:700">
                <table align="center" style="background-color: #D6E4ED">
                    <tr>
                        <td class="auto-style12"><a href="adduser.aspx" style="color: #000000; text-decoration: none">Add User</a></td>        
                        <td class="auto-style12"><a href="deleteuser.aspx" style="color: #000000; text-decoration: none">Delete User</a></td>
                        <td class="auto-style12"><a href="setqpaper.aspx" style="color: #000000; text-decoration: none">Set Q Paper</a></td>
                        <td class="auto-style14"><a href="paperview.aspx" style="color: #000000; text-decoration: none">Preview Q Paper</a></td>
                        <td class="auto-style14"><a href="deletepaper.aspx" style="color: #000000; text-decoration: none">Delete Q Paper</a></td>
                        <td class="auto-style14"><a href="reports.aspx" style="color: #000000; text-decoration: none">View Report</a></td>
                        <td class="auto-style5"><a href="adminlogout.aspx" style="color: #000000; text-decoration: none">Logout</a></td>                       
                    </tr>
                    </table>
                 </td>
            </tr></table></div><br />
    <div>
        <table class="auto-style42" style="background-color: #D6E4ED">
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="image"><img src="https://img.icons8.com/ios/50/000000/add-user-group-man-man.png" class="auto-style43"/></td>
                <td class="image"><img src="https://img.icons8.com/ios-filled/50/000000/remove-user-male.png" class="auto-style44"/></td>
                <td class="image"><img src="https://img.icons8.com/external-itim2101-lineal-itim2101/64/000000/external-paper-stationery-and-office-itim2101-lineal-itim2101.png" class="auto-style51" /></td>
            </tr>
            <tr>
                <td class="size"><a href="adduser.aspx" style="color: #000000; text-decoration: none; font-weight: bold">ADD USER</a></td>
                <td class="size"><a href="deleteuser.aspx" style="color: #000000; text-decoration: none; font-weight: bold">DELETE USER</a></td>
                <td class="size"><a href="setqpaper.aspx" style="color: #000000; text-decoration: none; font-weight: bold">SET Q PAPER</a></td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="image"><img src="https://img.icons8.com/dotty/80/000000/view-file.png" class="auto-style45" /></td>
                <td class="image"><img src="https://img.icons8.com/ios/80/000000/file-delete.png" class="auto-style47" /></td>
                <td class="image"><img src="https://img.icons8.com/ios/50/000000/combo-chart.png" class="auto-style46" /></td>
            </tr>
            <tr>
                <td class="size"><a href="paperview.aspx" style="color: #000000; text-decoration: none; font-weight: bold">PAPER VIEW</a></td>
                <td class="size"><a href="deletepaper.aspx" style="color: #000000; text-decoration: none; font-weight: bold">DELETE PAPER</a></td>
                <td class="size"><a href="reports.aspx" style="color: #000000; text-decoration: none; font-weight: bold">REPORTS</a></td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="image">&nbsp;</td>
                <td class="image"><img src="https://img.icons8.com/dotty/80/000000/export.png" /></td>
                <td class="image">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="size"><a href="adminlogout.aspx" style="color: #000000; text-decoration: none; font-weight: bold;">LOGOUT</a></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
    </div>
 </form>
</body>
</html>
