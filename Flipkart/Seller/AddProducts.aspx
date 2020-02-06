﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProducts.aspx.cs" Inherits="Seller_AddProducts" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
#Signupbtn{
  background-color: #2874f0;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

#Signupbtn:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: red;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}
img{
     position: relative;
    left:0px;
    
    width: 400px;
    height: 750px;
}
img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}
form{
    border: 1px solid #2874f0;
 
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #2874f0;
  width: 70%;
  /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
  #inside{
      position: absolute;
      top:0px;
      right:50px;
  }
}
</style>
</head>
<body>
    
 
    <form id="form1" runat="server">
 
    <div class="container">
        <label for="name"><b>Seller ID</b></label><br>
                    <asp:TextBox ID="sellerid" runat="server"></asp:TextBox>
                    <br>
       <label for="name"><b>Product Name</b></label><br>
                    <asp:TextBox ID="pname" runat="server"></asp:TextBox>
                    <br>
    <label for="name"><b>Product Description</b></label><br>
                    <asp:TextBox ID="pdesc" runat="server"></asp:TextBox>
                    <br>
    
     <label for="name"><b>Product Price</b></label><br>
                    <asp:TextBox ID="pprice" runat="server"></asp:TextBox>
                    <br>
        <label for="name"><b>Product Quantity</b></label><br>
                    <asp:TextBox ID="pquantity" runat="server"></asp:TextBox>
                    <br />
        <br />
        <label for="name"><b>Upload Image</b></label><br>
        <asp:FileUpload ID="imgupload" runat="server" />
                    <br>
    
    
   
   
    <div class="clearfix">
       
     
      
        <asp:Button ID="Signupbtn" runat="server" Text="Add Product" OnClick="Signupbtn_Click" />
       
     
      
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
       
     
      
        <br />
       
     
      
    </div>
       </div>      
     

         </td>
            </tr>
</table>
    </form>




</body>
</html>
