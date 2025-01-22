<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebForms.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    Registriraj se</p>
Korisničko ime:<asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
<br />
<br />
Puno ime:<asp:TextBox ID="tbFullName" runat="server"></asp:TextBox>
<br />
<br />
Lozinka:<asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
<br />
<br />
<asp:Button ID="btnRegister" runat="server" Text="Registriraj se" />
<br />
<br />
<asp:Label ID="lblMessage" runat="server" ForeColor="#CC0000"></asp:Label>
</asp:Content>
