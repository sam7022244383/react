<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="datalis.AddToCart" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link
        rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
        crossorigin="anonymous" />


    <style type="text/css">
        
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: white;
            min-width: 175px;
            box-shadow: 0px 8px 25px 0px black;
            padding: 20px 30px;
            z-index: 1;
            font-family: 'Times New Roman', Times, serif;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" width="100%" style="background-color: blue; height: 0px">
                <tr>
                    <td align="center">
                        <img src="images/logo.png" class="auto-style5"></td>
                    <td style="width: 800px">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="226px" placeholder="Search for products  brands and more"></asp:TextBox>
                    </td>
                    <th style="color: white;">
                        <div class="dropdown">
                            <span class="font">Login&signup</span>
                            <div class="dropdown-content" style="background-color: white; color: blue">
                                <p><a href="coding/login.aspx">Login</a></p>
                                <p><a href="coding/login.aspx">Signup</a></p>
                                <p>My Profile</p>
                                <p>Flipkart Plus Zone</p>
                                <p>Orders</p>
                                <p>Wishlist</p>
                                <p>Rewards</p>
                                <p>Gift Cards</p>
                                <p><a href="coding/login.aspx">Logout</a></p>
                            </div>
                        </div>
                    </th>
                    <th style="color: white;">
                        <div class="dropdown">
                            <span class="font">More</span>
                            <div class="dropdown-content" style="background-color: whitesmoke">
                                <p>Notification Preferences</p>
                                <p>Sell on Flipkart</p>
                                <p>24*7 Customer Care</p>
                                <p>Advertise</p>
                                <p>Download App</p>
                                <p><a href="coding/Admin.aspx">Admin Section</a></p>
                            </div>
                    </th>
                </tr>
            </table>
            You have
            <asp:Label ID="Label4" runat="server"></asp:Label>
&nbsp;Items in Your cart<br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Continue Shopping...</asp:HyperLink>
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="5" RepeatDirection="Horizontal" BackColor="White" BorderColor="#996633" BorderStyle="None" Height="100px" Width="50%">
                <ItemTemplate>
                    <table class="w-100">
                        <tr>
                            <td class="text-center">
                                <asp:Image ID="Image1" runat="server" Height="265px" ImageUrl='<%# Eval("image") %>' Width="255px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">ID :<asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">Name :
                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("productName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">Price :<asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="Button1" runat="server" BackColor="Blue" ForeColor="#CCFFCC" OnClick="Button1_Click" Text="Remove" />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Flipkart_databaseConnectionString2 %>" SelectCommand="SELECT * FROM [Cartproducts]"></asp:SqlDataSource>

        <p>
            Total Price :
            <asp:Label ID="Label5" runat="server"></asp:Label>
        </p>

    </form>
</body>
</html>
