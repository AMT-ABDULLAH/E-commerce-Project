<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalenderControl.aspx.cs" Inherits="WebApplication2.CalenderControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Calendar.png" OnClick="ImageButton1_Click" />
            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />

        </div>
    </form>
</body>
</html>
