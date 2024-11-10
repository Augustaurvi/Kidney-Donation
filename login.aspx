<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">



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
                    <a href="" class="navbar-brand"> <b style="color: #00CC00">Kidney </b> Donation</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                      
                    </ul>
               </div>

          </div>
     </section>


     <!-- MENU -->
     <br /> <br /><br /><br /><br />
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="card">
                <div class="card-header">
                    <h2 style="color:White ">Login</h2>
                </div>
                <div class="card-body">
                    <div class="input-group">
                        <label for="username"><i class="fas fa-user"></i></label>
                        <asp:TextBox ID="uname" runat="server" placeholder="Username" CssClass="form-control" required></asp:TextBox>
                   
                    </div>
                    <div class="input-group">
                        <label for="password"><i class="fas fa-lock"></i></label>
                        <asp:TextBox ID="Pass" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control" required></asp:TextBox>

                        </div>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-login" 
                        onclick="btnLogin_Click" />
                    <div align="center">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Username Is Required." ControlToValidate="uname" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password Is Required." ControlToValidate="Pass" ForeColor="Red"></asp:RequiredFieldValidator>

                    <br />Not Registered? <a href="register.aspx">Register Yourself</a><br />
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible=false ForeColor  =red></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Font Awesome -->
    
     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.sticky.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/wow.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/custom.js"></script>
  

</body>
</html>

