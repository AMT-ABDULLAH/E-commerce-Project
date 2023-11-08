<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListControlExample.aspx.cs" Inherits="WebApplication2.ListControlExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            </asp:CheckBoxList>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
            <br />
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
            <br />
            <br />
            <asp:BulletedList ID="BulletedList1" runat="server">
            </asp:BulletedList>
&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />

        </div>
    </form>
</body>
</html>
