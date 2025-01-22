<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="WebForms.Shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Naziv:<asp:TextBox ID="tbProductName" runat="server"></asp:TextBox>
            <br />
            <br />
            Opis:<asp:TextBox ID="tbDescription" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:GridView ID="gvProducts" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
