<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test2.aspx.cs" Inherits="WorkTest.Test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            方式<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Value="E">Email</asp:ListItem>
                <asp:ListItem Value="F">傳真</asp:ListItem>
                <asp:ListItem Value="P">列印</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="fieldValDrop" runat="server" ControlToValidate="DropDownList1" ErrorMessage="請選擇方式" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Email<br />
            <asp:TextBox ID="txtEmail" runat="server" Enabled="False" Width="188px"></asp:TextBox>
            <asp:CustomValidator ID="fieldValEmail" runat="server" ClientValidationFunction="txtEmail" ErrorMessage="請輸入Email" ForeColor="Red" OnServerValidate="fieldValEmail_ServerValidate"></asp:CustomValidator>
            <br />
            傳真<br />
            <asp:TextBox ID="txtFax" runat="server" Enabled="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="fieldValFax" runat="server" ControlToValidate="txtFax" Enabled="False" ErrorMessage="請輸入傳真號碼" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnSave" runat="server" Text="送出" />
        </div>
    </form>
</body>
</html>
