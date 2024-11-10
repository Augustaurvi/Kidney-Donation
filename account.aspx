<%@ Page Language="C#" AutoEventWireup="true" CodeFile="account.aspx.cs" Inherits="account" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Account</title>



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



     
    <section id="sign-up">
<form id="Form1" runat="server">
        <div class="container card-body shadow-lg">
                <br /><br />
                <div class="container">
      <div class="heading_container">
        <h1 style="font-size: larger; font-weight: bold; font-style: normal; font-variant: inherit; text-transform: capitalize; color: #008000; text-align: center; text-indent: inherit">
            Account</h1>
      </div>
            <div class="row" align="center">
        <div class="col-md-6">
          <div class="form_container">
          <div style="text-align: center; text-indent: inherit">
              <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                  DataKeyNames="userid" DataSourceID="SqlDataSource1" Height="211px" 
                  Width="1098px">
                  <Fields>
                      <asp:BoundField DataField="username" HeaderText="username" 
                          SortExpression="username" />
                      <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
                          SortExpression="mobileno" />
                      <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                      <asp:BoundField DataField="password" HeaderText="password" 
                          SortExpression="password" />
                      <asp:CommandField ShowEditButton="True" />
                  </Fields>
              </asp:DetailsView>
          </div>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:constring %>" 
                  DeleteCommand="DELETE FROM [viewers] WHERE [userid] = @userid" 
                  InsertCommand="INSERT INTO [viewers] ([username], [mobileno], [email], [password]) VALUES (@username, @mobileno, @email, @password)" 
                  SelectCommand="SELECT * FROM [viewers] WHERE ([userid] = @userid)" 
                  
                  UpdateCommand="UPDATE [viewers] SET [username] = @username, [mobileno] = @mobileno, [email] = @email, [password] = @password WHERE [userid] = @userid">
              <DeleteParameters>
                  <asp:Parameter Name="userid" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="username" Type="String" />
                  <asp:Parameter Name="mobileno" Type="Decimal" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
              </InsertParameters>
              <SelectParameters>
                  <asp:CookieParameter CookieName="userid" Name="userid" Type="Int32" 
                      DefaultValue="" />
              </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="username" Type="String" />
                  <asp:Parameter Name="mobileno" Type="Decimal" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="userid" Type="Int32" />
              </UpdateParameters>
              </asp:SqlDataSource>

          </div>
          
          </div>
          </div>
          <div style="text-align: center; text-indent: inherit"><br />
          <asp:Button ID="Button1" runat="server" Text="Logout" 
                  CssClass="btn btn-dark btn-lg" onclick="Button1_Click"></asp:Button>
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
