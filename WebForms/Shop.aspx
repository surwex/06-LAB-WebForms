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
            <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="WebFormsLabosDb">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="WebFormsLabosDb" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormsLabosConnectionString %>" ProviderName="<%$ ConnectionStrings:WebFormsLabosConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
