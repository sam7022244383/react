<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="datalis.WebForm1" %>

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
        button {
            padding: 5px;
            background-color: red;
            border: none;
            outline: none;
            cursor: pointer;
            color: wheat;
        }

        .auto-style4 {
            margin-left: 31px;
        }

        .auto-style5 {
            margin-left: 56px;
        }

        .auto-style6 {
            height: 26px;
            text-align: center;
        }

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
        <table border="0" width="100%" style="background-color: blue; height: 0px">
            <tr>
                <td align="center">
                    <img src="images/logo.png" class="auto-style5"></td>
                <td style="width: 800px">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="226px" placeholder="Search for products  brands and more"></asp:TextBox>
                &nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="White" NavigateUrl="~/searchproductscategory.aspx" Font-Underline="False">Search products</asp:HyperLink>
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#0000CC" ForeColor="White" OnClick="Button2_Click1" Text="Logout" />
                </td>
                <th style="color: white;">
                    <div class="dropdown">
                        <span class="font">Login&signup</span>
                        <div class="dropdown-content" style="background-color: white; color: blue">
                            <p><a href="coding/loginform.aspx">Login</a></p>
                            <p><a href="coding/registrationform.aspx">Signup</a></p>
                            <p>My Profile</p>
                            <p>Flipkart Plus Zone</p>
                            <p>Orders</p>
                            <p>Wishlist</p>
                            <p>Rewards</p>
                            <p>Gift Cards</p>
                            <p><a href="coding/loginform.aspx">Logout</a></p>
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
                            <p><a href="coding/Admin_login.aspx">Admin Section</a></p>
                        </div>
                </th>
                <th>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="White" NavigateUrl="~/AddToCart.aspx">Cart</asp:HyperLink>
                </th>

                <!--  aria-busy="True"-->
            </tr>

        </table>


        <table border="0px" width="100%" style="background-color: whitesmoke;">
            <tr>
                <th width="12.5%">
                    <div class="dropdown">
                        <span class="font">Electronics</span>
                        <div class="dropdown-content" style="background-color: whitesmoke">
                            <p>Trimer</p>
                            <p>Shaver</p>
                            <p>Tablet Accessories</p>
                            <p>Mobile Cable</p>
                            <p>Hairdryier</p>
                            <p>Blood Pressur Monitor</p>
                            <p>Laptop</p>
                            <p>Digital Thermometer</p>
                            <p>Earphons</p>
                            <p>Headphones</p>
                        </div>
                    </div>
                </th>

                <th width="12.5%">
                    <div class="dropdown">
                        <span class="font">TVs & Appliances</span>
                        <div class="dropdown-content" style="background-color: whitesmoke">
                            <p>Sony</p>
                            <p>fans</p>
                            <p>water Geysers</p>
                            <p>triple  door Refrigerator</p>
                            <p>voltage stabilizer</p>
                            <p>inverters</p>
                            <p>air cooler</p>
                            <p>water pumps</p>
                            <p>irons</p>
                            <p>convertable door Refrigerator</p>
                            <p>side by side door Refrigerator</p>
                            <p>double door Refrigerator</p>
                            <p>Single door Refrigerator</p>
                            <p>Intex</p>
                            <p>LG</p>
                            <p>panasonic</p>
                            <p>Samsung</p>
                            <p>MI</p>

                        </div>
                    </div>

                </th>






                <th width="12.5%">
                    <div class="dropdown">
                        <span class="font">Men</span>
                        <div class="dropdown-content" style="background-color: whitesmoke">
                            <p>All</p>
                            <p>Men's T-shirt</p>
                            <p>Mens's casual Shirt's</p>
                            <p>Men's Formal</p>
                            <p>Mens's kurta</p>
                            <p>Men's Ethinic Sets</p>
                            <p>Men's blazers</p>
                            <p>Men's raincout</p>
                            <p>Mwn's suit</p>
                            <p>Men's Jeans</p>
                            <p>Men's shorts</p>
                            <p>Men's Ethnic Pyijama</p>
                        </div>
                    </div>
                </th>

                <th width="12.5%">
                    <div class="dropdown">
                        <span class="font">Women</span>
                        <div class="dropdown-content" style="background-color: whitesmoke">
                            <p>All</p>
                            <p>Women's Kurtas</p>
                            <p>Ethnic Dress</p>
                            <p>Women dress material</p>
                            <p>Women Jeans</p>
                            <p>Women top</p>
                            <p>Women dress</p>
                            <p>women trouser</p>
                            <p>women track pant</p>
                            <p>women nightsuit</p>
                            <p>Women dupatta</p>
                            <p>
                            Men's/p></div>
                    </div>
                </th>
                <th width="12.5%" class="font">Baby & Kids</th>
                <th width="12.5%" class="font">Home & Furniture</th>
                <th width="12.5%" class="font">Sports, Books & More</th>
                <th width="12.5%" class="font">Offer Zon</th>
            </tr>

        </table>

        <marquee direction="left" scrollamount="18" loop="100" animation-delay="20" animation="marquee 10s linear infinite"><img width="100%" height="270px"src="images/bigbillian.jpg" /><img width="100%" height="270px"src="images/banner3.jpg"/ ><img width="100%" height="270px"src="images/banner2.jpg" /></marquee>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <p>
                You Have
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
&nbsp;Items in your cart.....<hr />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="productID" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal" Width="50%" Height="100px" BorderStyle="None" GridLines="Both" BackColor="White" BorderColor="#CC9966" CellPadding="4">
                <AlternatingItemStyle BorderWidth="2px" />
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" Width="100px" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <ItemStyle BackColor="White" ForeColor="#330099" />
                <ItemTemplate>
                    <table class="w-100">
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="265px" Width="255px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">ID:<asp:Label ID="Label1" runat="server" Text='<%# Eval("productID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">Name:<asp:Label ID="Label2" runat="server" Text='<%# Eval("productName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">Price:<asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Cart" BackColor="Blue" ForeColor="#CCFFCC" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            </asp:DataList>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Flipkart_databaseConnectionString %>" SelectCommand="SELECT * FROM [homeproducts]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;
        </p>
   </script>
    </form>pt>
</body>
</html>




