<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="ResumeMaker.Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

    <title>Information</title>
    <meta content="" name="description"/>
    <meta content="" name="keywords"/>
    <link href="assets/img/favicon.svg" rel="icon"/>
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"/>

    <link href="assets/vendor/aos/aos.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"/>
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet"/>
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"/>
    <link href="assets/css/style.css" rel="stylesheet"/>
</head>
<body>
    <header id="header" class="header fixed-top">
        <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

            <a href="index.html" class="logo d-flex align-items-center">
                <img src="assets/img/logo.svg" alt=""/>
                <span>ReSuMe MaKer</span>
            </a>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto " href="index.html">Home</a></li>
                    <li><a class="nav-link scrollto" href="about.html">About</a></li>
                    <li><a class="nav-link scrollto" href="services.html">Services</a></li>
                    <li><a class="nav-link scrollto" href="contact.html">Contact</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>

        </div>
    </header>

    <main id="main">
        <section class="breadcrumbs">
            <div class="container">
                <h2>Persnol Detail</h2>
            </div>
        </section>
        <section id=" " class="features" style="padding-top: 0px;">
            <div class="container-fluid">
                <form id="form1" runat="server">
                    <asp:HiddenField ID="hdnId" runat="server" />                   
                    <div class="row feture-tabs">
                        <div class="col-lg-12">

                            <!-- Tabs -->
                            <ul class="nav nav-pills mb-3">
                                <li>
                                    <a class="nav-link active" data-bs-toggle="pill" href="#tab1">Persanol Detail for Your Resume</a>
                                </li>
                                <li>
                                    <a class="nav-link" data-bs-toggle="pill" href="#tab2">Educational Qualification</a>
                                </li>
                                <li>
                                    <a class="nav-link" data-bs-toggle="pill" href="#tab3">Your Other Personal Details For your Resume</a>
                                </li>
                                <li>
                                    <a class="nav-link" data-bs-toggle="pill" href="#tab4">Your Declaration for Your Resume</a>
                                </li>
                            </ul>
                            <!-- End Tabs -->

                            <!-- Tab Content -->

                            <div class="tab-content">

                                <div class="tab-pane fade show active" id="tab1">

                                    <div class="container">
                                        <div class="row">
                                            <div class="col-12">
                                                <h4 style="text-align: center">Personal Detail</h4>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>

                                                            </div>

                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12">
                                                                <asp:TextBox ID="txtPhone_Number" runat="server" CssClass="form-control mt-3" placeholder="Phone Number"></asp:TextBox>

                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12">
                                                                <asp:TextBox ID="TextDOB" runat="server" CssClass="form-control mt-3" TextMode="Date" placeholder="Date of Birth"></asp:TextBox>

                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12">
                                                                <asp:TextBox ID="txtObjective" runat="server" CssClass="form-control mt-3" TextMode="MultiLine" placeholder="Objective"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="col-6">

                                                        <div class="row">
                                                            <div class="col-12">
                                                                <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control" placeholder="Email-ID"></asp:TextBox>

                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12">
                                                                <asp:TextBox ID="txtAddess" runat="server" CssClass="form-control mt-3" TextMode="MultiLine" placeholder="Address"></asp:TextBox>

                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-12 pt-3">
                                                                Gender:
                                                                <asp:RadioButtonList ID="rdobtnlistGender" runat="server" CssClass="form-control mt-3" RepeatDirection="Horizontal">
                                                                    <asp:ListItem Value="1" Text="Male" Selected="True"></asp:ListItem>
                                                                    <asp:ListItem Value="2" Text="Female"></asp:ListItem>
                                                                    <asp:ListItem Value="3" Text="Other"></asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Tab 1 Content -->

                                <div class="tab-pane fade show" id="tab2">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-12">
                                                <h4 style="text-align: center">Highere Degree Details</h4>
                                                <div class="row">
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <asp:TextBox ID="txtHDUniversityName" runat="server" CssClass="form-control" placeholder="University Name"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtHDInstituteName" runat="server" CssClass="form-control " placeholder="Institute Name"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                Passing Year
                                                                <asp:TextBox ID="txHDtPassingYear" runat="server" CssClass="form-control" TextMode="Date" placeholder="Passing Year"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtHDPercentage" runat="server" CssClass="form-control mt-3" placeholder="Percentage"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="container">
                                        <div class="row">
                                            <div class="col-12">
                                                <h4 style="text-align: center">Post Graduation Details</h4>
                                                <div class="row">
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <asp:TextBox ID="txtPGUUniversityName" runat="server" CssClass="form-control" placeholder="University Name"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtPGInstituteName" runat="server" CssClass="form-control " placeholder="Institute Name"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                Passing Year
                                                                <asp:TextBox ID="txtPPassingYear" runat="server" CssClass="form-control" TextMode="Date" placeholder="Passing Year"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtPGPercentage" runat="server" CssClass="form-control mt-3" placeholder="Percentage"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="container">
                                        <div class="row">
                                            <div class="col-12">
                                                <h4 style="text-align: center">Graduation Details</h4>
                                                <div class="row">
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <asp:TextBox ID="txtGiversityName" runat="server" CssClass="form-control" placeholder="University Name"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtPInstituteName" runat="server" CssClass="form-control " placeholder="Institute Name"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                Passing Year
                                                                <asp:TextBox ID="txtGRPassingYear" runat="server" CssClass="form-control" TextMode="Date" placeholder="Passing Year"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtGPercentage" runat="server" CssClass="form-control mt-3" placeholder="Percentage"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="container">
                                        <div class="row">
                                            <div class="col-12">
                                                <h4 style="text-align: center">Highere Secondary Certificate(HSC)</h4>
                                                <div class="row">
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <asp:TextBox ID="txtHSCUniversityName" runat="server" CssClass="form-control" placeholder="University Name"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtHSCInstituteName" runat="server" CssClass="form-control " placeholder="Institute Name"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                Passing Year
                                                                <asp:TextBox ID="textHSCPassingYear" runat="server" CssClass="form-control" TextMode="Date" placeholder="Passing Year"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtHSCPercentage" runat="server" CssClass="form-control mt-3" placeholder="Percentage"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="container">
                                        <div class="row">
                                            <div class="col-12">
                                                <h4 style="text-align: center">Secondary  School Certificate(SSC)</h4>
                                                <div class="row">
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <asp:TextBox ID="txtSSCUniversityName" runat="server" CssClass="form-control" placeholder="University Name"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtSSCInstituteName" runat="server" CssClass="form-control " placeholder="Institute Name"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                Passing Year
                                                                <asp:TextBox ID="textSSCPassingYear" runat="server" CssClass="form-control" TextMode="Date" placeholder="Passing Year"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtSSCPercentage" runat="server" CssClass="form-control mt-3" placeholder="Percentage"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Tab 2 Content -->

                                <!--Tab 3 -->

                                <div class="tab-pane fade show" id="tab3">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-12">
                                                <h4 style="text-align: center">Other Personal Details</h4>
                                                <div class="row">
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <asp:TextBox ID="txtInterpersanolSkill" runat="server" CssClass="form-control mt-3 " TextMode="MultiLine" placeholder="Interpersanol Skill"></asp:TextBox>
                                                            </div>

                                                            <div class="col-6">
                                                                <asp:TextBox ID="txtComputerSkill" runat="server" CssClass="form-control mt-3" TextMode="MultiLine" placeholder="Computer Skill"></asp:TextBox>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtExtraCurricularActivities" runat="server" CssClass="form-control mt-3" TextMode="MultiLine" placeholder="Extra Curricular Activities"></asp:TextBox>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control mt-3" TextMode="MultiLine" placeholder="Experience"></asp:TextBox>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtAchivements" runat="server" CssClass="form-control mt-3" TextMode="MultiLine" placeholder="Achivements"></asp:TextBox>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtHobbies" runat="server" CssClass="form-control mt-3" TextMode="MultiLine" placeholder="Hobbies"></asp:TextBox>
                                                            </div>

                                                        </div>
                                                    </div>

                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtCast" runat="server" CssClass="form-control mt-3" placeholder="Cast "></asp:TextBox>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtNationality" runat="server" CssClass="form-control mt-3" placeholder="Nationality"></asp:TextBox>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtLanguageknown" runat="server" CssClass="form-control mt-3" placeholder="Language  known "></asp:TextBox>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtUserStatus" runat="server" CssClass="form-control mt-3" placeholder="Status "></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- End Tab 3 Content -->

                                <!--Tab 4 -->

                                <div class="tab-pane fade show" id="tab4">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-12">
                                                <h4 style="text-align: center">Your Declaration for Your Resume</h4>
                                                <div class="row">
                                                    <div class="cal-6">
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <asp:TextBox ID="txtProject" runat="server" CssClass="form-control mt-3" placeholder="Project"></asp:TextBox>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <asp:TextBox ID="txtDeclarationSkills" runat="server" CssClass="form-control mt-3" placeholder="Declaration Skill"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- End Tab 4 Content -->

                                    <div class="col-md-12 text-center">

                                        <asp:Button ID="btnDownloadPDF" runat="server" CssClass="login100-form-btn" Text="Download PDF file" OnClick="btnSelectTemplate_Click"/>

                                        <asp:Button ID="txtReset" runat="server" CssClass="login100-form-btn" Text="Reset"/>

                                        <asp:Button ID="txtButton" runat="server" CssClass="login100-form-btn" Text="Cancel"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

            </div>

        </section>


    </main>
    <!-- End #main -->
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
