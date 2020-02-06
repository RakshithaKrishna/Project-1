<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUpAsSeller.aspx.cs" Inherits="Seller_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0 8px 10px;
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
        
       <label for="name"><b>Name</b></label><br>
                    <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                    <br>
         <asp:RequiredFieldValidator ID="vname" runat="server" ControlToValidate="fname" ErrorMessage=<small class="form-text text-danger" Display="Dynamic" >Name Cannot be Blank</small></asp:RequiredFieldValidator>
                          
    <label for="phno"><b>Phone Number</b></label><br>
                    <asp:TextBox ID="pno" runat="server"></asp:TextBox>
                    <br>
        <asp:RegularExpressionValidator ID="vphno" runat="server" ControlToValidate="pno" Display="Dynamic" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\ -]\s*)?|[0]?)?[6789]\d{9}|(\d[ -]?){10}\d$" ErrorMessage=<small class="form-text text-danger"> Enter valid Moblie Number</small></asp:RegularExpressionValidator>
                    <br>
    
    <label for="email"><b>Email</b></label><br>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    <br>
          <asp:RegularExpressionValidator ID="vemail" runat="server" ControlToValidate="email"  Display="Dynamic" ValidationExpression="^[a-zA-Z0-9.!#$%&amp;'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$" ErrorMessage=<small class="form-text text-dange">Enter Valid Email ID</small></asp:RegularExpressionValidator>
                    <br>
         <label for="password"><b>Password</b></label><br>
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    <br>
        <asp:RegularExpressionValidator ID="vpswd" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="Password must contain 1 Upper case, 1 lower case 1 number and 1 special character" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})"></asp:RegularExpressionValidator>
                    <br>
         <label for="confirmpass"><b>Confirm Password</b></label><br>
                    <asp:TextBox ID="confirmpass" runat="server" TextMode="Password"></asp:TextBox>
         <asp:CompareValidator ID="vconpswd" runat="server" ControlToCompare="password" ControlToValidate="confirmpass" ErrorMessage=<small class="form-text text-dange" Display="Dynamic" >Password Doesn't Match</small></asp:CompareValidator><br />
        <br />
   

    <label for="Accnumber"><b>Account Number</b></label><br>
                    <asp:TextBox ID="Accnumber" runat="server" MaxLength="12"></asp:TextBox>
                    <br>
       
         <label for="Ifsccode"><b>IFSC Code</b></label><br>
                    <asp:TextBox ID="Ifsccode" runat="server" MaxLength="15"></asp:TextBox>
                    <br>
    
        <label for="GSTIN"><b>GSTIN</b></label><br>
                    <asp:TextBox ID="GSTIN" runat="server" MaxLength="6"></asp:TextBox>
                    <br>
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
          </div>
    <div class="clearfix">
       
     
      
        <asp:Button ID="Signupbtn" runat="server" Text="SignUp" OnClick="Signupbtn_Click" />
       
     
      
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
       
     
      
    </div>
       </div>      
     

    </form>


     <a href="Seller.aspx">Cancel</a>

</body>
</html>

