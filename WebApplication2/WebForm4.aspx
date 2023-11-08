<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication2.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                <asp:ListItem Value="1">Diploma</asp:ListItem>
                <asp:ListItem Value="2">Graduate</asp:ListItem>
                <asp:ListItem Value="3">Post Graduate</asp:ListItem>
                <asp:ListItem Value="4">Doctrate</asp:ListItem>
            </asp:ListBox>
&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Show Selected List Items" />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" MaxLength="10" TextMode="Password" ToolTip="Enter Name">Username</asp:TextBox>
            <br />
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female" />
            <br />
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Under Graduate</asp:ListItem>
                <asp:ListItem>Graduate</asp:ListItem>
                <asp:ListItem>Doctrate</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:CheckBox ID="GraduateCheckBox" runat="server" Text="UnderGraduate" />
&nbsp;
            <asp:CheckBox ID="PostGraduateCheckBox" runat="server" Text="Graduate" />
&nbsp;&nbsp;
            <asp:CheckBox ID="DoctrateCheckBox" runat="server" Text="Doctrate" />
            <br />
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Sunday</asp:ListItem>
                <asp:ListItem>Monday</asp:ListItem>
                <asp:ListItem>Tuesday</asp:ListItem>
                <asp:ListItem>Wednesday</asp:ListItem>
                <asp:ListItem>Thursday</asp:ListItem>
                <asp:ListItem>Friday</asp:ListItem>
                <asp:ListItem>Saturday</asp:ListItem>
            </asp:CheckBoxList>
&nbsp;&nbsp;
            <asp:Button ID="btnClick" runat="server" OnClick="btnClick_Click" Text="Click" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" ImageHeight="100px" ImageUrl="~/images/img1.jpg" ImageWidth="100px" NavigateUrl="https://pmu.edu.sa/" Target="_blank">PMU</asp:HyperLink>
            <asp:Button ID="Button1" runat="server" 
                OnClientClick="alert('You are about to submit this page')" Text="Button" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="https://pmu.edu.sa/">Go to PMU</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="https://pmu.edu.sa/images/c-logo-new.png" />
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
