<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NavTechniques.aspx.cs" Inherits="WebApplication2.NavTechniques" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm5.aspx" Target="_blank">Go to Webform5</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRedirect" runat="server" OnClick="btnRedirect_Click" Text="Goto WebForm5" />
        </p>
            <p>
                <table>
        <tr>
            <td colspan="2">
                <h1>
                    This is Navigation Techniques</h1>
            </td>
        </tr>
        <tr>
            <td>
                <b>Name</b>
            </td>
            <td>
                :<asp:TextBox ID="txtName" runat="server">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <b>Email</b>
            </td>
            <td>
                :<asp:TextBox ID="txtEmail" runat="server">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnCrossPagePostback" runat="server" 
                Text="Cross Page Postback - WebForm5" 
                Width="250px" PostBackUrl="~/WebForm5.aspx" OnClick="btnCrossPagePostback_Click"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Server.Transfer - WebForm5" Width="250px" />
            </td>
        </tr>
        </table>

            </p>
        </div>
    </form>
</body>
</html>
