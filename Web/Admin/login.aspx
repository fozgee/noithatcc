<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body class="align">
    <div class="site__container">
        <div class="grid__container">
    
    <div class="form form--login">
    
      <form id="form1" runat="server" >

        <div class="form__field">
          <label class="fontawesome-user" for="login__username"><span class="hidden">Username</span></label>
     <asp:TextBox ID="txtUser" runat="server" placeholder="Username"></asp:TextBox>
        </div>

        <div class="form__field">
          <label class="fontawesome-lock" for="login__password"><span class="hidden">Password</span></label>
          <asp:TextBox ID="txtPass" runat="server" placeholder="Password" TextMode="Password"> </asp:TextBox>
        </div>
          
        <div class="form__field">
            <asp:Label ID="Label1" runat="server" Text="" ForeColor="#ea5656"></asp:Label>
            </div>
        <div class="form__field">
          
        <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click"/>
        </div>
            </form>
    </div>
        </div>
        </div>

</body>
</html>