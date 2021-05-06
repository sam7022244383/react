<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="password.aspx.cs" Inherits="datalis.coding.password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="decoration.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 22px;
        }
          
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <table border="0" width = "100%" style="background-color: blue; height : 0px">
   <tr>
         <td align="center"><img src="../images/logo.png" class="auto-style5"></td>
       <td style="width :800px">
           <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Width="226px"  placeholder="Search for products  brands and more"></asp:TextBox>
         </td>
       <th style="color: white;">
           <div class="dropdown">
           <span class="font">Login&signup</span>
                 <div class="dropdown-content" style="background-color:white; color:blue"><p><a href="coding/login.aspx">Login</a></p><p><a href="coding/login.aspx">Signup</a></p><p>My Profile</p><p>Flipkart Plus Zone</p><p>Orders</p><p>Wishlist</p><p>Rewards</p><p>Gift Cards</p><p><a href="coding/login.aspx">Logout</a></p>
                 </div>
                 </div>
       </th>
       <th style="color: white;">
           <div class="dropdown">
          <span  class="font"> More</span>
            <div class="dropdown-content" style="background-color:whitesmoke"> <p>Notification Preferences</p><p>Sell on Flipkart</p><p>24*7 Customer Care</p><p>Advertise</p><p>Download App</p><p><a href="coding/Admin.aspx">Admin Section</a></p>
                 </div>

       </th>
       </tr>
                 </table>
        <div style="position: absolute; top:100px; left:50px">
            <asp:TextBox ID="regbirthcity" runat="server" AutoPostBack="True"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Show password" CssClass="auto-style1" Font-Bold="True" ForeColor="#0033CC" OnClick="Button1_Click" />
            &nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Underline="False" ForeColor="#0033CC" NavigateUrl="~/coding/loginform.aspx">Continue to Login</asp:HyperLink>
            <hr />
        
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="652px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        
            <br />
            <br />
        
        </div>
    </form>
</body>
</html>
