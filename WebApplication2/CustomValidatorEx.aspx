<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidatorEx.aspx.cs" Inherits="WebApplication2.CustomValidatorEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 423px;
        }
        .auto-style3 {
            width: 423px;
            text-align: right;
        }
    </style>
    <script>
        // Client side validation function to check if the number is even. 
        function IsEven(source, args) 
        {
            if (args.Value == "") 
            {
                args.IsValid = false;
            }
            else 
            {
                if (args.Value % 2 == 0) 
                {
                    args.IsValid = true;
                }
                else 
                {
                    args.IsValid = false;
                }
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><strong>Please enter a positive even number:</strong></td>
                    <td>
                        <asp:TextBox ID="txtEvenNumber" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" 
                            ControlToValidate="txtEvenNumber" Display="Dynamic" 
                            ErrorMessage="Not a valid positive even number" ForeColor="Red" 
                            OnServerValidate="CustomValidator1_ServerValidate" 
                            ClientValidationFunction="IsEven" ValidateEmptyText="True">

                        </asp:CustomValidator>
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
