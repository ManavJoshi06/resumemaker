<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forms-elements.aspx.cs" Inherits="ResumeMaker.Admin.forms_elements" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>AdMiN</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="./assets/img/favicon.svg" rel="icon" />
    <link href="./assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet" />
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet0" />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />

    <!-- =======================================================
  * Template Name: NiceAdmin - v2.2.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
    <form id="form1" runat="server">
        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">

            <div class="d-flex align-items-center justify-content-between">
                <a href="index.html" class="logo d-flex align-items-center">
                    <img src="../assets/img/logo.svg" alt="" />
                    <span class="d-none d-lg-block">AdMiN</span>
                </a>
                <i class="bi bi-list toggle-sidebar-btn"></i>
            </div>
            <!-- End Logo -->

        </header>
        <!-- End Header -->

        <!-- ======= Sidebar ======= -->
        <aside id="sidebar" class="sidebar">

            <ul class="sidebar-nav" id="sidebar-nav">

                <li class="nav-item">
                    <a class="nav-link collapsed" href="index.html">
                        <i class="bi bi-grid"></i>
                        <span>Admin</span>
                    </a>
                </li>
                <!-- End Dashboard Nav -->
            </ul>

        </aside>
        <!-- End Sidebar-->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Form Elements</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item">Forms</li>
                        <li class="breadcrumb-item active">Elements</li>
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->

            <section class="section">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Form </h5>

                                <!-- General Form Elements -->
                                <form>
                                    <div class="row mb-3">
                                        <label for="inputText" class="col-sm-2 col-form-label">Template</label>
                                        <div class="col-sm-10">
                                            <!--<input type="text" class="form-control" />-->
                                            <asp:TextBox ID="txtTemplateName" runat="server" CssClass="form-control" placeholder="Template Name"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="inputNumber" class="col-sm-2 col-form-label">File Upload</label>
                                        <div class="col-sm-10">
                                            <%--<input class="form-control" type="file" id="formFile">--%>
                                            <asp:FileUpload ID="txtTemplateUpload" runat="server" CssClass="form-control" placeholder=" ChooseTemplate"></asp:FileUpload>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label class="col-sm-2 col-form-label">Upload </label>
                                        <div class="col-sm-10">
                                            <asp:Button ID="btnUploadTemplate" runat="server" CssClass="login100-form-btn" Text="Upload Template" />
                                        </div>
                                    </div>

                                    <section class="section">
                                        <div class="row mt-5">

                                            <div class="col-lg-8">

                                                <div class="card">
                                                    <div class="card-body">
                                                        <h5 class="card-title">Templates</h5>

                                                        <%--<!-- Table with stripped rows -->
                                            <asp:GridView ID="GVDesignation" runat="server" AutoGenerateColumns="false" CssClass="table table-striped" AllowPaging="true" PageSize="10" OnPageIndexChanging="GVDesignation_PageIndexChanging" OnRowCommand="GVDesignation_RowCommand" >
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sr.No." ItemStyle-Width="2" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <%#Container.DataItemIndex + 1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" />
                                                    <asp:BoundField DataField="Designation_Name" HeaderText="Designation" />
                                                    <asp:TemplateField HeaderText="Action"  ItemStyle-HorizontalAlign="Left" ItemStyle-Width="110px" >
                                                        <ItemTemplate >
                                                           <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="lnkEdit" CommandArgument='<%#Eval("ID") %>' Text='<i class="fa fa-edit"></i>' CssClass="btn btn-Primary" style="font-size:18px;color:b" ></asp:LinkButton> 
                                                           <asp:LinkButton ID="lnkDelete" runat="server" CommandName="lnkDelete" CommandArgument='<%#Eval("ID") %>' Text='<i class="fa fa-trash"></i>' CssClass="btn btn-Primary" style="font-size:18px;color:red" ></asp:LinkButton> 
                                                                                                
                                                            </ItemTemplate>
                                                    </asp:TemplateField>
                                                    
                                                </Columns>
                                            </asp:GridView>
                                            
                                            
                                            <!-- End Table with stripped rows -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- End General Form Elements -->--%>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </section>


                                </form>
                                <!-- End General Form Elements -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </main>
        <!-- End #main -->


        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </footer>
        <!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/chart.js/chart.min.js"></script>
        <script src="assets/vendor/echarts/echarts.min.js"></script>
        <script src="assets/vendor/quill/quill.min.js"></script>
        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
    </form>
</body>
</html>
