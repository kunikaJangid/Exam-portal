<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="panel.aspx.cs" Inherits="blah_blah_blah.panel" %>

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
        width:100%;
        border:double;
    }
    .auto-style4 {
        text-align:center;
    } 
    .auto-style5 {
        width:650px;
    }
    .auto-style6 {
        width:30px
    }
    .auto-style7 {
        width:585px;
    }
    .auto-style8 {
        width:550px
    }
    .auto-style9 {
        width:220px
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
        border-left:solid;
        border-right:solid;
    }
    .log {
        text-align:right;
    }
    .auto-style42 {
        height: 23px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style41">
            <div class="auto-style40" style="background-color: #D6E4ED">
            Exam Portal</div>
        </div><br />
        <div class="auto-style41"> 
            <table align="center" class="auto-style1">
                
                <tr>
                    <td style="background-color: #D6E4ED">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#999999" style="background-color: #D6E4ED" class="log">
                        <a href="logout.aspx" style="border-style: groove; border-width: 4px; padding: 6px; margin: 4px; font-size: large; color: #006666; text-decoration: none; font-weight: bold; text-align: center;">LOGOUT</a>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #D6E4ED" class="auto-style42">
                        <asp:Label ID="time" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #D6E4ED">
                        <asp:Label ID="msg" runat="server" Font-Bold="True" Font-Size="Large"
                             ForeColor="#0066FF"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #D6E4ED">&nbsp;</td>
                </tr>
                <tr>
                    <td style="background-color: #D6E4ED;">
                        <table align="cnter" bgcolor="#00000" class="auto-style5" style="background-color: #FFFFFF">
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td bgcolor="#ffffcc" class="auto-style7" style="background-color: #FFFFFF">
                                        <% con.open();
                                            rqry = "select * from question where settype='" + testtype + "'order by qid";
                                            rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
                                            rdr = rcmd.ExecuteReader();
                                            c = 1;
                                            while(rdr.Read())
                                            {
                                                if (c != count)
                                                {
                                                    c = c + 1;
                                                }
                                                else if (c == count)
                                                {
                                                   %><%int q = Convert.ToInt16(rdr.GetValue(0));
                                                                 qid = q; %> 
                                        <table align="center" class="auto-style8">
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>Q:-<%=count%><%=rdr.GetValue(1)%></td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" 
                                                         GroupName="opt" />
                                                    <%=rdr.GetValue(3))%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="opt"/>
                                                    <%=rdr.GetValue(4))%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt" />
                                                    <%=rdr.GetValue(5))%>
                                                </td>
                                            </tr>                                       
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt" />
                                                    <%=rdr.GetValue(6))%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table align="center" class="auto-style8">
                                                        <tr>
                                                            <td class="auto-style9">
                                                                <asp:Button ID="back" runat="server" Text="Back" Font-Bold="true"
                                                                    Height="20px" Width="100px" OnClick="back_click" />
                                                            </td>
                                                            <td class="auto-style9">
                                                                <asp:Button ID="next" runat="server" Text="Next" Font-Bold="true"
                                                                    Height="20px" Width="100px" OnClick="next_click" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Finish" runat="server" Text="Finish" Font-Bold="true"
                                                                    Height="20px" Width="100px" OnClick="finish_click" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                        <%if (count != nameof)
                                                        c = c + 1; 
                                                }
                                            }const.Close();  %>
                                    
                                         
                                </td>
                                <td class="auto-style6">&nbsp;</td> 
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #D6E4ED">&nbsp;</td> 
                   </tr>
                <tr>
                    <td style="background-color: #D6E4ED">&nbsp;</td>
                </tr>                                   
            </table>
        </div>
    </form>
</body>
</html>
