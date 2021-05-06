<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrationform.aspx.cs" Inherits="datalis.coding.registrationform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link href="decoration.css" rel="stylesheet" />

    <%-- <script src="validation.js"></script>--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div class="outer">
            <div class="left" style="text-align: center">
                <h3>Register</h3>
                <p>
                    Get access to your Orders,<br />
                    Wishlist and<br />
                    Recomadations
                </p>

                <img style="width: 200px" src="../images/flpback.jpg" class="rounded" />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="White" Height="0px" NavigateUrl="~/coding/loginform.aspx">Click Here to Login</asp:HyperLink>
            </div>
            <div class="right">
                <div id="showallerror"></div>
                <div class="input_field">
                    <asp:TextBox type="text" ID="regfirst" runat="server" placeholder="FirstName" Class="input"></asp:TextBox>
                </div>
                <div class="input_field">
                    <asp:TextBox type="text" ID="reglast" runat="server" placeholder="LastName" class="input"></asp:TextBox>
                </div>
                <div class="input_field">
                    <asp:TextBox type="mail" ID="regemail" runat="server" placeholder="Email" class="input"></asp:TextBox>
                </div>
                <div class="input_field">
                    <asp:TextBox type="password" ID="regpass" runat="server" placeholder="password" class="input" ToolTip="Your Password must have atleast one UPPERCASE , LOWERCASE , ONE NUMBER , and ONE SPECIAL Charecter"></asp:TextBox>
                </div>
                <div id="errormsg"></div>
                <div class="input_field">
                    <asp:TextBox type="password" ID="regpassconfirm" runat="server" placeholder="Confirm Password" class="input" ToolTip="Confirm Password should match the password field"></asp:TextBox>
                </div>

                <div class="input_field">
                    <asp:TextBox type="text" ID="regbirthcity" runat="server" placeholder="Secrate Key" class="input" ToolTip="Try to make it as strong as possible , include special charecters/numbers"></asp:TextBox>
                </div>

                <div class="input_field1">
                    <asp:Button ID="Button1" runat="server" Text="register" class="input1" BackColor="#FF6600" ForeColor="White" OnClick="Button1_Click" />
                </div>

            </div>
    </form>
    <script>
        $(document).ready(function () {
            $('#regpassconfirm').keyup(function () {
                var pass1 = $('#regpass').val();
                var pass2 = $('#regpassconfirm').val();
                if (pass1 != pass2) {
                    $('#regpassconfirm').html('Password is not matching');
                    $('#regpassconfirm').css('color', 'red');
                    return false;
                }
                else {
                    $('#regpassconfirm').html('password  gets matched');
                    $('#regpassconfirm').css('color', 'green');
                    return true;
                }
            });
            $('#Button1').click(function () {

                var user = $('#regfirst').val();

                if (user == "") {
                    $('#showallerror').html('first name should not be empty');
                    $('#showallerror').css('color', 'red');
                    return false;
                }
                if ((user.length) <= 2 || (user.length) >= 25) {
                    $('#showallerror').html('first name must be between 4 and 20 charecters');
                    $('#showallerror').css('color', 'red');
                    return false;
                }
            });
            $('#Button1').click(function () {

                var user1 = $('#reglast').val();

                if (user1 == "") {
                    $('#showallerror').html('Last name should not be empty');
                    $('#showallerror').css('color', 'red');
                    return false;
                }
                if ((user1.length) <= 2 || (user1.length) >= 25) {
                    $('#showallerror').html('Last name must be between 4 and 20 charecters');
                    $('#showallerror').css('color', 'red');
                    return false;
                }
            });
            $('#Button1').click(function () {
                var user3 = $('#regbirthcity').val();

                if (user3 == "") {
                    $('#showallerror').html('BithCity Field cannot Be empty, make this field as strong as possible by adding special charecters ect. because this will be your password recovery key');
                    $('#showallerror').css('color', 'red');
                    return false;
                }

                if ((user3.length <= 5) || (user3.length >= 20)) {
                    $('#showallerror').html('BithCity should be in the range of 5 and 20');
                    $('#showallerror').css('color', 'red');
                    return false;
                }
            });
        });
    </script>


</body>
</html>
