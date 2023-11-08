<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareValidatorEx.aspx.cs" Inherits="WebApplication2.CompareValidatorEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
    <tr>
        <td class="auto-style1">
            <b>Password</b>
        </td>
        <td>
            :<asp:TextBox ID="txtPassword" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <strong>Retype Password</strong></td>
        <td>
            :<asp:TextBox ID="txtRetypePassword" runat="server" 
                Width="150px" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidatorPassword" runat="server"
            ErrorMessage="Password and Retype Password must match"
            ControlToValidate="txtRetypePassword" ControlToCompare="txtPassword"
            Type="String" Operator="Equal" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRetypePassword" Display="Dynamic" ErrorMessage="Retype Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <strong>Date of Application:</strong></td>
        <td>
            <asp:TextBox ID="txtDateofapplication" runat="server" Width="150px">
</asp:TextBox>
<asp:CompareValidator ID="CompareValidatorDateofbirth" runat="server" 
ErrorMessage="Date of application must be greater than 01/01/2022"
ControlToValidate="txtDateofapplication" ValueToCompare="01/01/2022"
Type="Date" Operator="GreaterThanEqual" ForeColor="Red"
SetFocusOnError="true" Display="Dynamic"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDateofapplication" Display="Dynamic" ErrorMessage="Date of application is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <strong>Age</strong>:</td>
        <td>
            <asp:TextBox ID="txtAge" runat="server" Width="150px"></asp:TextBox>
<asp:CompareValidator ID="CompareValidatorAge" runat="server" 
ErrorMessage="Age must be a number" ControlToValidate="txtAge" 
Operator="DataTypeCheck" Type="Integer" ForeColor="Red"
SetFocusOnError="true" Display="Dynamic"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Age is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
            <br />
            <br />
            <asp:Label ID="lblStatus" runat="server" Font-Bold="True"></asp:Label>
        </td>
    </tr>
</table>
        </div>
    </form>
</body>
</html>
