<%@ Page Language="C#" AutoEventWireup="true" CodeFile="article2.aspx.cs" Inherits="article2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Article</title>


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

        <section id="article">
        <div class="container wow fadeInUp" data-wow-delay="0.1s">
            <img class="head-img img-responsive" src="images/ar2.jpg" alt="">
            <div class="details-container">
                <div class="title"><h3>Why do some people need kidney transplants? </h3></div>
                
                <p>Kidneys cleanse the blood of naturally occurring poisons known as toxins, and balance the amount of fluid and minerals in your body.

When they are not working properly and can no longer do these jobs, a person is said to be in kidney failure.

People with kidney failure rely on a dialysis machine to do the jobs their kidneys can no longer do.

Dialysis is not a cure for kidney disease however, and some people may need to be attached to a dialysis machine for many hours a day until a suitable transplant can be found.</p>
              
                <p></p>
                <strong><a>Share this article:</a></strong>
                <div class="icons">
                    <i class="fa fa-facebook-square fa-3x"></i>
                    <i class="fa fa-twitter-square fa-3x"></i>
                </div>

            </div>

            </div>
            </section>

     

     <form id="Form1" runat = server>
     <!-- NEWS -->
     <section id="news" data-stellar-background-ratio="2.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <!-- SECTION TITLE -->
                         <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                              <h2>Latest Articles</h2>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.4s">
                              <a href="article1.aspx">
                                   <img src="images/ar1news.jpg" class="img-responsive" alt="">
                              </a>
                              <div class="news-info">
                                   
                                   <h3><a href="article1.aspx">How to donate a kidney?</a></h3><br />
                                   <p>If you’re interested in becoming a living donor, the first thing you'll have to do is contact a transplant center to get evaluated. If you have someone in mind who you’d like to donate to, you usually have to get evaluated at the same transplant center. If you don’t have someone in mind to donate to, then you can get evaluated at any transplant center to begin the process.</p>
                                   <br /><div class="author text-align-center">
                                       <asp:Button ID="Button1" runat="server" Text="Read More! " CssClass="section-btn btn btn-default btn-gray smoothScroll" PostBackUrl="article1.aspx"></asp:Button>
                                   </div>
                              </div>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.6s">
                              <a href="article2.aspx">
                                   <img src="images/ar2news.jpg" class="img-responsive" alt="">
                              </a>
                              <div class="news-info">
                                   
                                   <h3><a href="article2.aspx"> Why do some people need kidney transplants?</a></h3>
                                   <p>Kidneys cleanse the blood of naturally occurring poisons known as toxins, and balance the amount of fluid and minerals in your body.

When they are not working properly and can no longer do these jobs, a person is said to be in kidney failure.

People with kidney failure rely on a dialysis machine to do the jobs their kidneys can no longer do.</p>
                                   <div class="author text-align-center">
                                       <asp:Button ID="Button2" runat="server" Text="Read More! " CssClass="section-btn btn btn-default btn-gray smoothScroll" PostBackUrl="article2.aspx"></asp:Button>

                                   </div>
                              </div>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.8s">
                              <a href="article3.aspx">
                                   <img src="images/news-image2.jpg" class="img-responsive" alt="">
                              </a>
                              <div class="news-info">
                                 
                                   <h3><a href="article3.aspx">Living Kidney Donation</a></h3>
                                   <p>Living kidney donation is when a healthy person donates one of their two kidneys while they are alive. Getting a kidney from a living donor has lots of benefits for the person who needs a transplant, called the recipient. If you are interested in donating a kidney, you will work with a transplant center at a hospital. The transplant center will make sure you are healthy enough to donate, do the surgery, and help you recover.</p>
                                   <div class="author text-align-center">
                                      
                                       <asp:Button ID="Button3" runat="server" Text="Read More! " CssClass="section-btn btn btn-default btn-gray smoothScroll" PostBackUrl="article3.aspx"></asp:Button>
                                      
                                      </div>
                              </div>
                         </div>
                    </div>

               </div>
          </div>
     </section>


     </form>
     
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
