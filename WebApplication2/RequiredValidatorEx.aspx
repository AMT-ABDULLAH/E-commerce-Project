<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequiredValidatorEx.aspx.cs" Inherits="WebApplication2.RequiredValidatorEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 236px;
        }
        .auto-style3 {
            width: 236px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><strong>Name:</strong></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Gender:</strong></td>
                    <td>
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ControlToValidate="ddlGender" ErrorMessage="Gender is required" Font-Bold="True" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
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
        </div>
    </form>
</body>
</html>
