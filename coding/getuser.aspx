<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getuser.aspx.cs" Inherits="datalis.coding.getemployee" %>

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
        .auto-style1 {
            margin-left: 17px;
        }

        .auto-style2 {
            margin-left: 54px;
        }

        .auto-style3 {
            margin-left: 0px;
        }
    </style>
    <link href="decoration.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">

        <table border="0" width="100%" style="background-color: blue; height: 0px">
            <tr>
                <td align="center">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/logo.PNG" PostBackUrl="~/WebForm1.aspx" />
                </td>
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
        <div style="width: 1000px; margin-bottom: 50px; margin-top: 50px; margin-left: 50px; margin-right: 50px">
            <br />
            <br />
            <asp:TextBox ID="getuserid" runat="server" Width="214px" CssClass="auto-style2"></asp:TextBox>
            <asp:Button ID="getuserbtn" runat="server" Text="Search Customer" CssClass="auto-style1" Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF" OnClick="getuserbtn_Click" BackColor="#99FFCC" Width="163px" />

            &nbsp;<asp:Button ID="deleteuser" runat="server" Text="Delete" CssClass="auto-style3" Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF" OnClick="deleteuser_Click" Width="162px" OnClientClick="return confirm('Are you sure you want to delete customer record permanantly')" BackColor="#99FFCC" />

            &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#99FFCC" Font-Bold="True" ForeColor="#3366FF" OnClick="Button1_Click" Text="Show Customers" Width="162px" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="266px" Width="792px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <br />

        </div>
    </form>
</body>
</html>
