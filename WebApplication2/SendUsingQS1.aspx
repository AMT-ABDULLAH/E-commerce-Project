﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendUsingQS1.aspx.cs" Inherits="WebApplication2.SendUsingQS1" %>

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
            <h1>
                This is Send Using QS1</h1>
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
            <asp:Button ID="btnSendData" runat="server" 
            Text="Go to SendUsingQS2" onclick="btnSendData_Click" />
        </td>
    </tr>
</table>
        </div>
    </form>
</body>
</html>
