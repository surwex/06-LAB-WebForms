<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebForms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Login<br />
            <br />
            Korisničko ime:<asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
            <br />
            <br />
            Lozinka:<asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="#CC0000"></asp:Label>
        </div>
    </form>
</body>
</html>
