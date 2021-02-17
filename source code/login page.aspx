<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login page.aspx.cs" Inherits="login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clothing store</title>
 
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/style1.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Reggae+One&display=swap" rel="stylesheet">
</head>
<body>  
    <div class="container border border-dark" id="login-section">
    <h1 class="display-3 text-center mt-3">THINKNth CLOTHING STORE MANAGEMENT</h1>
    <form id="form1" class="mx-auto mt-5 border border-dark text-center p-5" runat="server">
   
            <asp:Label Text="Username " runat="server" />
            <asp:TextBox ID="TextBox1" runat="server"  required></asp:TextBox>
            <br />
            <asp:Label Text="Password " runat="server" />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" class="mt-3" required></asp:TextBox>
            <br />
            <asp:Button type="submit" ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary mt-3" OnClick="Button1_Click" />
            <br />
            <a href="signup page.aspx" style="float:right;">New User?</a>
            

               
    </form>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" CssClass="mx-auto text-center"></asp:Label >
        
     </div>
    <script src="JAVASCRIPT/login.js"></script>
</body>
</html>
