﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Resume_Maker.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>ReSuMe MaKer: About Us</title>
  <meta content="" name="description">
  <meta content="" name="keywords"> 
  <link href="assets/img/favicon.svg" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> 
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
 
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"> 
  <link href="assets/css/style.css" rel="stylesheet"> 
</head>
<body>
    <header id="header" class="header fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.svg" alt="">
        <span>ReSuMe MaKer</span>

           
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto " href="index.html">Home</a></li>
          <li><a class="nav-link scrollto" href="about.html">About</a></li>
          <li><a class="nav-link scrollto" href="services.html">Services</a></li> 
          <li><a class="nav-link scrollto" href="contact.html">Contact</a></li>
          <li><a class="getstarted scrollto" href="login.html">Login</a></li>
          <li><a class="getstarted scrollto" href="registration.html">Registration</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav> 

    </div>
  </header> 

  <main id="main"> 
    <section class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.html">Home</a></li>
          <li>Contact</li>
        </ol>
        <h2>Contact Us</h2>

      </div>
    </section> 
 <section id="contact" class="contact">

      <div class="container" data-aos="fade-up">

        <header class="section-header">
          <h2>Contact</h2>
          <p>Contact Us</p>
        </header>

        <div class="row gy-4">

          <div class="col-lg-6">

            <div class="row gy-4">
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bi bi-geo-alt"></i>
                  <h3>Address</h3>
                  <p>A108 Adam Street,<br>New York, NY 535022</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bi bi-telephone"></i>
                  <h3>Call Us</h3>
                  <p>+1 5589 55488 55<br>+1 6678 254445 41</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bi bi-envelope"></i>
                  <h3>Email Us</h3>
                  <p>info@example.com<br>contact@example.com</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bi bi-clock"></i>
                  <h3>Open Hours</h3>
                  <p>Monday - Friday<br>9:00AM - 05:00PM</p>
                </div>
              </div>
            </div>

          </div>

          <div class="col-lg-6">
            <form runat="server">
              <div class="row gy-4">
                  <asp:HiddenField ID="hdnId" runat="server" />

                <div class="col-md-6">
                  <%--<input type="text" name="name" class="form-control" placeholder="Your Name" required>--%>
                    <asp:TextBox ID ="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>

                </div>

                <div class="col-md-6 ">
                  <%--<input type="email" class="form-control" name="email" placeholder="Your Email" required>--%>
                    <asp:TextBox ID ="txtEmail" runat="server" CssClass="form-control" placeholder="Email-Id"></asp:TextBox>

                </div>

                <div class="col-md-12">
                  <%--<input type="text" class="form-control" name="subject" placeholder="Subject" required>--%>
                    <asp:TextBox ID ="txtSubject" runat="server" CssClass="form-control" placeholder="Subject"></asp:TextBox>
                </div>

                <div class="col-md-12">
                  <%--<textarea class="form-control" name="message" rows="6" placeholder="Message" required></textarea>--%>
                    <asp:TextBox ID ="txtMessage" runat="server" CssClass="form-control" placeholder="Message"></asp:TextBox>
                </div>

                <div class="col-md-12 text-center">
                  <%--<div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Your message has been sent. Thank you!</div>--%>

                  <%--<button type="submit">Send Message</button>--%>
                    <asp:Button ID="btnSendMessage" runat="server" CssClass="form-control" Text="Send Messag"  Onclick="btnSendMessage_Click" BackColor="#F07C10"/>
                </div>

              </div>
            </form>

          </div>

        </div>

      </div>

    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
 

    <div class="footer-top">
      <div class="container">
        <div class="row gy-4">
          <div class="col-lg-5 col-md-12 footer-info">
            <a href="index.html" class="logo d-flex align-items-center">
              <img src="assets/img/logo.svg" alt="">
              <span>ReSuMe MaKer</span>
            </a>
            <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus.</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
              <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
              <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
              <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>
          </div>

          <div class="col-lg-2 col-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Services</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
            <h4>Contact Us</h4>
             <p>19 G-1/605, Sangharsh Nagar, Chandivali Farm Road, 
              Chandivali, Andheri East
              <br><br>
              <strong>Phone:</strong> +91 8779660365<br>
              <strong>Email:</strong> binuyadav296@gmai.com<br>
            </p>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>ReSuMe MaKer</span></strong>. All Rights Reserved
      </div> 
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</body>
</html>
