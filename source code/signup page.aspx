<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup page.aspx.cs" Inherits="signup_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/style2.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Reggae+One&display=swap" rel="stylesheet">
</head>
<body>  
    <div class="container border border-dark" id="signup-section">
    <h1 class="display-3 text-center mt-3">Sign Up!</h1>
    <form id="form1" class="mx-auto mt-5 border border-dark text-center p-5" runat="server">
   
            <asp:Label Text="Username " runat="server" />
            <asp:TextBox ID="TextBox1" runat="server" required></asp:TextBox>
            <br />
            <asp:Label Text="Password " runat="server" />
            <asp:TextBox ID="TextBox2" runat="server" class="mt-3" required></asp:TextBox>
            <br />

                <asp:Label Text="Email" runat="server" CssClass="m-3"/>  
 
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" class="mt-3" required></asp:TextBox>
            
            <br />
            <asp:Button  type="submit" OnClientClick="register()" ID="Button1" runat="server" Text="Sign Up!" CssClass="btn btn-primary mt-3" OnClick="Button1_Click"/>
            <br />
             
            <a href="login page.aspx" style="float:right;">Login page</a>

          
    </form>
         <asp:Label ID="Label1" runat="server" Text="Label" Visible="false" CssClass="mx-auto text-center"></asp:Label >
        
     </div>
    <script src="JAVASCRIPT/signup.js"></script>
</body>
</html>
