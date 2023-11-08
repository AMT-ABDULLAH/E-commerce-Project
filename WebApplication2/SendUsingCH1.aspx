<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendUsingCH1.aspx.cs" Inherits="WebApplication2.SendUsingCH1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <h1>This is Context Handler1</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Name</b>
                    </td>
                    <td>:<asp:TextBox ID="txtName" runat="server">
                    </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email</b>
                    </td>
                    <td>:<asp:TextBox ID="txtEmail" runat="server">
                    </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server"
                            Text="Go to SendUsindCH2" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
