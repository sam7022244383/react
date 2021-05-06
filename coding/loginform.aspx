<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginform.aspx.cs" Inherits="datalis.coding.loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="decoration.css" rel="stylesheet" />
    <title></title>
    <%-- <script src="validation.js"></script>--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }

        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="outer">
            <div class="left">
                <h3>Login</h3>
                <p>
                    Get access to your Orders,<br />
                    Wishlist and<br />
                    Recomadations
                </p>
                <img style="width: 200px" src="../images/flpback.jpg" alt="logo_image" />
            </div>
            <div class="right">
                <div class="input_field">
                    <asp:TextBox type="mail" ID="regmail" runat="server" placeholder="Email" Class="input"></asp:TextBox>
                </div>
                <div class="input_field">
                    <asp:TextBox type="password" ID="regpass" runat="server" placeholder="Password" class="input"></asp:TextBox>
                </div>
                <div class="auto-style1">
                    <asp:HyperLink class="forgetpass" ID="HyperLink1" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="#0066FF" NavigateUrl="~/coding/password.aspx">Forgot Password?</asp:HyperLink>
                </div>
                <br />
                <div class="input_field1">
                    <asp:Button ID="Button1" runat="server" Text="Login" class="input1" BackColor="#FF6600" ForeColor="White" OnClick="Button1_Click" />
                </div>
                <br />
                <div class="auto-style2">
                    <asp:HyperLink ID="HyperLink2" runat="server" class="hyper" Font-Bold="True" Font-Underline="False" ForeColor="#0066FF" NavigateUrl="~/coding/registrationform.aspx">New To Flipkart? Register Here</asp:HyperLink>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
