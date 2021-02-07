<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test1.aspx.cs" Inherits="WorkTest.WebForm1" %>

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
            <asp:TextBox ID="txtEmail" runat="server" Enabled="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="fieldValEmail" runat="server" ControlToValidate="txtEmail" Enabled="False" ErrorMessage="請輸入Email" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Email格式錯誤" ForeColor="Red"></asp:RegularExpressionValidator>
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
