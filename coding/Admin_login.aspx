<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="datalis.coding.Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="decoration.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="outer">
            <div class="left">
                <h3>Admin Login</h3>
                <p>
                    Get access to your Orders,<br />
                    Wishlist and<br />
                    Recomadations
                </p>
                <img style="width: 200px" src="../images/flpback.jpg" alt="logo_image" />
            </div>
            <div class="right">
                <div class="input_field">
                    <asp:TextBox type="mail" ID="regadminmobile" runat="server" placeholder="Email" Class="input"></asp:TextBox>
                </div>
                <div class="input_field">
                    <asp:TextBox type="password" ID="regadminpass" runat="server" placeholder="Password" class="input"></asp:TextBox>
                </div>

                <br />
                <div class="input_field1">
                    <asp:Button ID="Button1" runat="server" Text="Login" class="input1" BackColor="#FF6600" ForeColor="White" OnClick="Button1_Click" />
                </div>
                <br />

            </div>
    </form>
</body>
</html>
