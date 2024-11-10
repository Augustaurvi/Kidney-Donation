<%@ Page Language="C#" AutoEventWireup="true" CodeFile="donor.aspx.cs" Inherits="donor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Donor Registration</title>



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

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/tooplate-style.css">

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
                    <a href="home.aspx" class="navbar-brand"> <b style="color: #00CC00">Kidney </b>Donation</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="home.aspx" class="smoothScroll">Home</a></li>
                         <li><a href="article1.aspx" class="smoothScroll">Article</a></li>
                         <li><a href="donor.aspx" class="smoothScroll">Donor</a></li>
                         <li><a href="reciver.aspx" class="smoothScroll">Reciver</a></li>
                         <li><a href="account.aspx" class="smoothScroll">Account</a></li>
                    </ul>
               </div>

          </div>
     </section>


     <section>
<form id="Form1" runat="server">
        <div class="container  wow fadeInUp">
                <br /><br />
                <div class="container">
      <div class="heading_container">
               <h1 style="font-size: larger; font-weight: bold; font-style: normal; font-variant: inherit; text-transform: capitalize; ; text-align: center; text-indent: inherit">Kidney Donation Registration Form</h1>
     
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
            <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Donor Name Is Required." ControlToValidate="dname" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="dname" runat="server" CssClass="form-control" placeholder="Donor Name"></asp:TextBox>
              </div>
              
            <div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Gender Is Required." ControlToValidate="dgen" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="dgen" runat="server" CssClass="form-control" placeholder="Gender Male/Female/Other"></asp:TextBox>
              </div>
              
                <div>
                
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile No. Is Required." ControlToValidate="dMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="dMobile" ForeColor="Red"></asp:RegularExpressionValidator>
                 <asp:TextBox ID="dMobile" runat="server" CssClass="form-control" 
                      placeholder="Mobile No." TextMode="Number"> </asp:TextBox>
              </div>
              <div>
                
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Age Is Required." ControlToValidate="age" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:TextBox ID="age" runat="server" CssClass="form-control" 
                      placeholder="Age 18+ " TextMode="Number" Min="18"> </asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Age Must be Enter 18+." ValidationExpression="^(1[8-9]|[2-9]\d|\d{3,})$" ControlToValidate="age" ForeColor="Red"></asp:RegularExpressionValidator>
             
              </div>
              <div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email is Required." ControlToValidate="dEmail" ForeColor="Red"></asp:RequiredFieldValidator>
               <asp:TextBox ID="dEmail" runat="server" CssClass="form-control" 
                      placeholder="Email" TextMode="Email"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is not Valid." ValidationExpression="^\S+@\S+$" ControlToValidate="dEmail" ForeColor="Red"></asp:RegularExpressionValidator>
              </div>
            
                        
              <div>
              <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
              <asp:ListItem>A+</asp:ListItem>
              <asp:ListItem>B+</asp:ListItem>
              <asp:ListItem>O+</asp:ListItem>
              <asp:ListItem>A-</asp:ListItem>
              <asp:ListItem>B-</asp:ListItem>
              <asp:ListItem>O-</asp:ListItem>
              <asp:ListItem>AB+</asp:ListItem>
              <asp:ListItem>AB-</asp:ListItem>
              
              </asp:DropDownList>
              </div>
              <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Aadhar Number Is Required." ControlToValidate="aadharno" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="aadharno" runat="server" CssClass="form-control" placeholder="Aadhar No." TextMode="Number"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter Valid Aadhar No." ValidationExpression="[0-9]{12}" ControlToValidate="aadharno" ForeColor="Red"></asp:RegularExpressionValidator>
              
              </div>
              
              <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Aadhar Card Is Required." ControlToValidate="apic" ForeColor="Red"></asp:RequiredFieldValidator>
              
              <asp:FileUpload ID="apic" runat="server" CssClass="form-control"></asp:FileUpload></div>
            
     
            
              <div>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="If You Have Any Madicle Issue You Can`t Donate Your Kidney." ForeColor="red" ControlToValidate="mdissue" ValidationExpression="No|NO|no"></asp:RegularExpressionValidator>
                 <asp:TextBox ID="mdissue" runat="server" CssClass="form-control" placeholder="Medical Issue: No"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Medicle Issue  is Required." ControlToValidate="mdissue" ForeColor="Red"></asp:RequiredFieldValidator>
                            
              </div>
              
            
              <div class="btn_box"> <br>
                             
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-dark" 
                      onclick="Button1_Click"> </asp:Button>                  
                  
               </div>
              <div>
                       <br /><asp:Label ID="Label1" runat="server" Text="Label" Visible="false" Font-Bold="True" ForeColor="Red"></asp:Label>
                        <br /><asp:Label ID="Label2" runat="server" Text="Label" Visible="false" Font-Bold="True" ForeColor="Red"></asp:Label>
              </div>
          </div>
        </div>
        <div class="col-md-6">
          <div>
            
          <asp:Image ID="Image1" runat="server" ImageUrl="images/d1.jpg" CssClass="img-box img-fluid"></asp:Image>
        
          </div>
        </div>
      </div>
    </div>
           
   </div>
 </form>
</section>





     
     <!-- FOOTER -->
     <footer data-stellar-background-ratio="5">
          <div class="container">
               <div class="row">

                    <div class="col-md-4 col-sm-4">
                         <div class="footer-thumb"> 
                              <h4 class="wow fadeInUp" data-wow-delay="0.4s">About Kidney Donation</h4>
                                <p>Kidneys are essential for cleansing our blood. Choosing to donate a kidney could transform, or even save a life.</p>

                              <div class="contact-info">
                                   <p><i class="fa fa-phone"></i> +91 99 987 55 441</p>
                                   <p><i class="fa fa-envelope-o"></i> <a href="#">@kidneydonation@gmail.com</a></p>
                              </div>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4"> 
                         <div class="footer-thumb"> 
                              <h4 class="wow fadeInUp" data-wow-delay="0.4s">Latest Articles</h4>
                              <div class="latest-stories">
                                   <div class="stories-image">
                                        <a href="#"><img src="images/ar1news.jpg" class="img-responsive" alt=""></a>
                                   </div>
                                   <div class="stories-info">
                                        <a href="#"><h5>How To Donote A Kidney?</h5></a>
                                        <span>April 28, 2024</span>
                                   </div>
                              </div>

                              <div class="latest-stories">
                                   <div class="stories-image">
                                        <a href="#"><img src="images/news-image3.jpg" class="img-responsive" alt=""></a>
                                   </div>
                                   <div class="stories-info">
                                        <a href="#"><h5>Living Kidney Donation</h5></a>
                                        <span>April 01, 2024</span>
                                   </div>
                              </div>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4"> 
                         <div class="footer-thumb">
                              <div class="opening-hours">
                                   <h4 class="wow fadeInUp" data-wow-delay="0.4s">Opening Hours</h4>
                                   <p>Monday - Friday <span>09:00 AM - 06:00 PM</span></p>
                                   <p>Saturday <span>09:00 AM - 01:00 PM</span></p>
                                   <p>Sunday <span>Closed</span></p>
                              </div> 

                              <ul class="social-icon">
                                   <li><a href="https://facebook.com" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                                   <li><a href="https://twitter.com" class="fa fa-twitter"></a></li>
                                   <li><a href="https://instagram.com" class="fa fa-instagram"></a></li>
                              </ul>
                         </div>
                    </div>

                    <div class="col-md-12 col-sm-12 border-top">
                         <div class="col-md-4 col-sm-6">
                              <div class="copyright-text"> 
                                   <p>Copyright &copy; 2024 
                                   
                                   | Develope by Mohit Prajapati & Urvi  </p>
                              </div>
                         </div>
                         <div class="col-md-6 col-sm-6">
                              <div class="footer-link"> 
                                   </div>
                         </div>
                         <div class="col-md-2 col-sm-2 text-align-center">
                              <div class="angle-up-btn"> 
                                  <a href="#top" class="smoothScroll wow fadeInUp" data-wow-delay="1.2s"><i class="fa fa-angle-up"></i></a>
                              </div>
                         </div>   
                    </div>
                    
               </div>
          </div>
     </footer>

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
