<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Register </title>

    
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="Tooplate">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/animate.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="js/bootstrap.min.css" />
  
     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/tooplate-style.css">
     <link rel="stylesheet" href="css/StyleSheet.css">
</head>
<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>


     <!-- HEADER -->
     
      <section class="navbar navbar-default navbar-static-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="" class="navbar-brand"> <b style="color: #00CC00">Kidney </b>Donation</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                   
               </div>

          </div>
     </section>
 <br /><br />
    
     <form id="form1" runat="server">
        <div class="register-container">
            <div class="card">
                <div class="card-header">
                    <h2 style="color:White;">Register</h2>
                </div>
                <div class="card-body">
                    <div class="input-group">
                        <label for="username"><i class="fas fa-user"></i></label>
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" CssClass="form-control" required></asp:TextBox>               
                    </div>
                    <div class="input-group">
                        <label for="mobileno"><i class="fas fa-mobile-alt"></i></label>
                        <asp:TextBox ID="txtMobileNo" runat="server" placeholder="Mobile Number" CssClass="form-control" required></asp:TextBox>
                    </div>
                    <div class="input-group">
                        <label for="email"><i class="fas fa-envelope"></i></label>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="form-control" required></asp:TextBox>
                    </div>
                    <div class="input-group">
                        <label for="password"><i class="fas fa-lock"></i></label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control" required></asp:TextBox>
                    </div>
                    <div class="input-group">
                        <label for="confirmPassword"><i class="fas fa-lock"></i></label>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password" CssClass="form-control" required></asp:TextBox>
                    </div>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" 
                        CssClass="btn-register" onclick="btnRegister_Click"/>
                    <br /><asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                    <div align="center"> 
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is not Valid." ValidationExpression="^\S+@\S+$" ControlToValidate="txtEmail" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobileNo" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Does Not Match!" ForeColor="red" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"></asp:CompareValidator>
                    <br />Already Registered ?<a href="login.aspx" > Login Yourself </a>
                    </div>
                </div>
            </div>
        </div>
    </form>


      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
         <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.sticky.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/wow.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/custom.js"></script>
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
</body>
</html>
