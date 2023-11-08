<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUDOperationsEx.aspx.cs" Inherits="WebApplication2.CRUDOperationsEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD Operations</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 336px;
        }

        .auto-style3 {
            width: 336px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="uid" runat="server" />
            <table class="auto-style1">
                <caption><strong>Registration Form</strong></caption>
                <tr>
                    <td class="auto-style3"><strong>Username</strong></td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Email</strong></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Password</strong></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Country</strong></td>
                    <td>
                        <asp:DropDownList ID="ddlCountry" runat="server" Width="200px">
                            <asp:ListItem Value="-1">Select Country</asp:ListItem>
                            <asp:ListItem>Saudi Arabia</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick="btnSubmit_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Clear" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblStatus" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <center>
        <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="User ID" />
                <asp:BoundField DataField="Username" HeaderText="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Country" HeaderText="Country" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("Id") %>' OnClick="lnkView_Click">View</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </center>
    </form>
</body>
</html>
