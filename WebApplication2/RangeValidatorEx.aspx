<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RangeValidatorEx.aspx.cs" Inherits="WebApplication2.RangeValidatorEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 284px;
        }
        .auto-style3 {
            width: 284px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><strong>Age</strong></td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Age must be between 1 &amp; 100" Font-Bold="True" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Age is required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Date Available</strong></td>
                    <td>
                        <asp:TextBox ID="txtDateAvailable" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtDateAvailable" ErrorMessage="Date must be between 01/01/2022 to 31/12/2022" Font-Bold="True" ForeColor="Red" MaximumValue="12/31/2022" MinimumValue="01/01/2022" Type="Date"></asp:RangeValidator>
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
