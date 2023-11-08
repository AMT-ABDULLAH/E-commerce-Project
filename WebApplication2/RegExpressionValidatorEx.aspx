<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegExpressionValidatorEx.aspx.cs" Inherits="WebApplication2.RegExpressionValidatorEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 222px;
        }
        .auto-style3 {
            width: 222px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><strong>Email:</strong></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
                    <br />
                    <br />
                    <asp:Label ID="lblStatus" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
