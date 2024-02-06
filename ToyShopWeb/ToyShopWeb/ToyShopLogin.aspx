<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToyShop1.aspx.cs" Inherits="ToyShopWeb.ToyShop1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Assets/CSS/StyleLogin.css" rel="stylesheet" />
</head>
<body>
   
    <div class="loginbox">
    <img src="/Assets/Logo/User.png" alt ="Alternative text" class ="user" />
    <h2> Log in Here </h2>
    <form runat ="server">
        <asp:Label Text="Email" CssClass="lblemail" runat="server"></asp:Label>
        <asp:TextBox ID="txtemail" runat="server" CssClass="txtemail" placeholder="Enter Email"></asp:TextBox>
        <asp:Label Text="Password" CssClass="lblpass" runat="server"></asp:Label>
        <asp:TextBox ID="txtpass" runat="server" CssClass="txtpass" placeholder="********" />
        <asp:Button ID="btnSignin" Text="Sign In" CssClass="btnsubmit" runat="server" OnClick="btnSignin_Click" />
        <asp:LinkButton Text="Forgot Password ?" CssClass="btnforget" runat="server"></asp:LinkButton>
        <br />
        <asp:Label ID="lblerror" runat="server" />
    </form>
    </div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
       
</body>
</html>
