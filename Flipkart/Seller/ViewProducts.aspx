<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewProducts.aspx.cs" Inherits="Seller_ViewProducts" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <title></title>
    
    <style>
        footer{
            background-color: black;
            color: white;
        }
        body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}

.example{
    position:absolute;
    left:500px;
}

    </style>
    <script>
        
    </script>
</head>
<body>
  
  <form id="form1" runat="server">
   <nav class="navbar navbar-inverse" style="background-color:#2874f0;border: none;margin-bottom:0px;">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#" style="color:white;border: none;margin-bottom:0px;">Flipkart&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="362px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" />
            
        </a>
    &nbsp;</div>
 
           
    <ul class="nav navbar-nav navbar-right">
  
        <li><a href="AddProducts.aspx"  style="color:white;"><i class="	fas fa-shopping-cart">Add Products</i></a></li>
         <li><a href="Seller.aspx"  style="color:white;"><i class="fas fa-sign-out-alt">Logout</i></a></li>
    </ul>
      
  </div>
</nav>
    

   
      
     <h1>Products Added&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lblMsg" runat="server"></asp:Label>
      </h1>
      <p>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FlipkartConnectionString2 %>" DeleteCommand="DELETE FROM [Productdemo] WHERE [product_id] = @product_id" InsertCommand="INSERT INTO [Productdemo] ([product_name], [product_Desc], [product_price], [Product_quantity]) VALUES (@product_name, @product_Desc, @product_price, @Product_quantity)" SelectCommand="SELECT [product_name], [product_Desc], [product_price], [Product_quantity], [product_id] FROM [Productdemo] WHERE ([seller_id] = @seller_id)" UpdateCommand="UPDATE [Productdemo] SET [product_name] = @product_name, [product_Desc] = @product_Desc, [product_price] = @product_price, [Product_quantity] = @Product_quantity WHERE [product_id] = @product_id">
              <DeleteParameters>
                  <asp:Parameter Name="product_id" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="product_name" Type="String" />
                  <asp:Parameter Name="product_Desc" Type="String" />
                  <asp:Parameter Name="product_price" Type="Double" />
                  <asp:Parameter Name="Product_quantity" Type="Int32" />
              </InsertParameters>
              <SelectParameters>
                  <asp:SessionParameter Name="seller_id" SessionField="id" Type="Int32" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="product_name" Type="String" />
                  <asp:Parameter Name="product_Desc" Type="String" />
                  <asp:Parameter Name="product_price" Type="Double" />
                  <asp:Parameter Name="Product_quantity" Type="Int32" />
                  <asp:Parameter Name="product_id" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="SqlDataSource1" style="border-color:#2874f0;" Height="141px" Width="1031px">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                  <asp:BoundField DataField="product_Desc" HeaderText="product_Desc" SortExpression="product_Desc" />
                  <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                  <asp:BoundField DataField="Product_quantity" HeaderText="Product_quantity" SortExpression="Product_quantity" />
                  <asp:BoundField DataField="product_id" HeaderText="product_id" InsertVisible="False" ReadOnly="True" SortExpression="product_id" />
              </Columns>
          </asp:GridView>
      </p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
      <p>
          &nbsp;</p>
  

  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-info">
              <h4>&nbsp;Help</h4>
              <ul>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Payments</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Shipping</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Cancellation & Returns</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">FAQ</a></li>
            </ul>
          </div>

         

          <div class="col-lg-3 col-md-6 footer-contact">
             <h4>Policy</h4>
            <ul>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Return Policy</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Terms of Use</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Security</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Privacy</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Site Map</a></li>
            </ul>
          </div>
  <div class="col-lg-3 col-md-6 footer-contact">
      <h4>Social</h4>

            <div class="social-links">
                <a href="#" class="whatsapp"><i class="fa fa-whatsapp"></i>Whatsapp</a><br>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i>Facebook</a><br>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i>Google</a><br>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i>LinkedIn</a><br>
            </div>

          </div>

          <div class="col-lg-3 col-md-6 footer-newsletter">
            <h4>About Us</h4>
            <ul>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Contact Us</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">About Us</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Careers</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Flipkart Stories</a></li>
            </ul>
      </div>
    </div>

    <div class="container">
        <div class="copyright">
            <center> &copy; Copyright <strong>@Flipkart</strong>. All Rights Reserved</center>
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=BizPage
        -->
      </div>
    </div>
  </footer><!-- #footer -->
   
    </form>
</body>
</html>

