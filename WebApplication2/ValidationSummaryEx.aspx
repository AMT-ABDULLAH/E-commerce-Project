<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationSummaryEx.aspx.cs" Inherits="WebApplication2.ValidationSummaryEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 192px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border: 1px solid black;width:100%">
                <tr>
                    <td colspan="2">
                        <h2>User Registration</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <b>Email</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="100px">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail"
                            runat="server" ForeColor="Red"
                            ErrorMessage="Email is required"
                            ControlToValidate="txtEmail" Display="Dynamic" Text="*">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail"
                            runat="server" ErrorMessage="Invalid Email Format"
                            ControlToValidate="txtEmail" ForeColor="Red"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Text="*">
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <b>User Name</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" Width="100px">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName"
                            runat="server" ForeColor="Red"
                            ErrorMessage="Username is required"
                            ControlToValidate="txtUserName" Display="Dynamic" Text="*">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <b>Password</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" Width="100px"
                            TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword"
                            runat="server" ForeColor="Red"
                            ErrorMessage="Password is required"
                            ControlToValidate="txtPassword" Display="Dynamic" Text="*">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <b>Confirm Password</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"
                            Width="100px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password and Confirm Password must match" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Save"
                            OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" HeaderText="Page Errors:" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
