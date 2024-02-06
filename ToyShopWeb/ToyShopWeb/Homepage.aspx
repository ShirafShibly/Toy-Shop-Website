<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ToyShopWeb.HomePage" %>

<!DOCTYPE html>

<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Assets/CSS/StyleHome.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

    <header class="d-flex flex-wrap justify-content-center py-3 mb-4  ">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" style="height: 100px;">
            <div class="container-fluid">
                <button
                    class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarExample01" aria-controls="navbarExample01" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarExample01">
                    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                        <img src="/Assets/Logo/LOGO.jpg" style="width: 30%;" alt="logo" />
                    </a>

                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Features</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Pricing</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
        <!-- Navbar -->
    </header>


    <div class="container mb-5 mt-5">
            <div class="col-md-12 ab">
            <div class="row">
                <!--cart-->
                   <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                <!--cart end-->
            </div>
        </div>
    </div>



    <hr />

    <footer class="text-center text-lg-start bg-light text-muted">
        <%--<section class=""  style="background-color: #212529e6; padding: 1px 0px 0px 0px; color: #000; background-image:url('/Assets/Image/footer.jpg')";background-size: contain; >--%>
            <div class="container text-center text-md-start mt-5">
                <!-- Grid row -->
                <div class="row mt-3">
                     
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                        <!-- Content -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            <i class="fas fa-gem me-3"></i>Shiraf Toy Shop
                        </h6>
                       <p><i class="fas fa-home me-3"></i>M.S.M. Shiraf</p>
                        <p>
                            <i class="fas fa-envelope me-3"></i>
                            sof20b228@uovt.ac.lk
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                       
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                        <p><i class="fas fa-phone me-3"></i>+ 94 719 598 321</p>
                        <p><i class="fas fa-print me-3"></i>+ 94 123 456 789</p>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>

        <!-- Copyright -->
        <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary bg-dark">
            <!-- Copyright -->
            <div class="text-white text-center mb-3 mb-md-0" style="padding-left: 38%;">
                Copyright © 2023. All rights reserved.
            </div>
            <!-- Copyright -->
        </div>
        <!-- Copyright -->
    </footer>


</body>
</html>
