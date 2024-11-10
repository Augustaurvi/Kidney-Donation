<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

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
                       
                         <li><a href="admin.aspx" class="smoothScroll">Donor list</a></li>
                         <!--li><a href="donorlist.aspx" class="smoothScroll">Donor List</a></li-->
                         <li><a href="reciverlist.aspx" class="smoothScroll">reciver List</a></li>
                         <li><a href="userlist.aspx" class="smoothScroll">Users List</a></li>
                         <li><a href="account.aspx" class="smoothScroll">   </a></li>
                    </ul>
               </div>

          </div>
     </section>



      <section id="sign-up">
<form id="Form1" runat="server">
        <div class="container card-body shadow-lg wow fadeInUp">
                <br /><br />
                <div class="container">
      <div class="heading_container">
        <h1 style="font-size: larger; font-weight: bold; font-style: normal; font-variant: inherit;  text-align: center; text-indent: inherit">Donar List</h1>
      </div>
            <div class="row">
        <div class="col-md-6">
          <div class="form_container">
          <div style="text-align: center; text-indent: inherit; width: 1044px;">

              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  DataKeyNames="doid" DataSourceID="SqlDataSource1" Width="1194px" 
                  Font-Bold="True" Height="318px">
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" />
                      <asp:BoundField DataField="dname" HeaderText="dname" SortExpression="dname">
                      </asp:BoundField>
                      <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender">
                      </asp:BoundField>
                      <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile">
                      </asp:BoundField>
                      <asp:BoundField DataField="age" HeaderText="age" 
                          SortExpression="age">
                      </asp:BoundField>
                      <asp:BoundField DataField="email" HeaderText="email" SortExpression="email">
                      </asp:BoundField>
                      <asp:BoundField DataField="bloodgp" HeaderText="bloodgp" 
                          SortExpression="bloodgp">
                      </asp:BoundField>
                      <asp:BoundField DataField="aadharno" HeaderText="aadharno" 
                          SortExpression="aadharno">
                      </asp:BoundField>
                       
                       
                      <asp:BoundField DataField="mdissue" HeaderText="mdissue" 
                          SortExpression="mdissue" />
                      <asp:TemplateField>
                          <EditItemTemplate>
                              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Image ID="Image1" runat="server" Height="110px" 
                                  ImageUrl='<%# Eval("apic") %>' Width="193px" />
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
              </asp:GridView>


            </div>
          </div>
          
          </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:constring %>" 
                    SelectCommand="SELECT * FROM [donations]" 
                    DeleteCommand="DELETE FROM [donations] WHERE [doid] = @doid" 
                    InsertCommand="INSERT INTO [donations] ([userid], [dname], [gender], [mobile], [age], [email], [bloodgp], [aadharno], [apic], [mdissue]) VALUES (@userid, @dname, @gender, @mobile, @age, @email, @bloodgp, @aadharno, @apic, @mdissue)" 
                    UpdateCommand="UPDATE [donations] SET [userid] = @userid, [dname] = @dname, [gender] = @gender, [mobile] = @mobile, [age] = @age, [email] = @email, [bloodgp] = @bloodgp, [aadharno] = @aadharno, [apic] = @apic, [mdissue] = @mdissue WHERE [doid] = @doid">
                    <DeleteParameters>
                        <asp:Parameter Name="doid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="userid" Type="Int32" />
                        <asp:Parameter Name="dname" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="mobile" Type="Decimal" />
                        <asp:Parameter Name="age" Type="Int32" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="bloodgp" Type="String" />
                        <asp:Parameter Name="aadharno" Type="Decimal" />
                        <asp:Parameter Name="apic" Type="String" />
                        <asp:Parameter Name="mdissue" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="userid" Type="Int32" />
                        <asp:Parameter Name="dname" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="mobile" Type="Decimal" />
                        <asp:Parameter Name="age" Type="Int32" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="bloodgp" Type="String" />
                        <asp:Parameter Name="aadharno" Type="Decimal" />
                        <asp:Parameter Name="apic" Type="String" />
                        <asp:Parameter Name="mdissue" Type="String" />
                        <asp:Parameter Name="doid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
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


   