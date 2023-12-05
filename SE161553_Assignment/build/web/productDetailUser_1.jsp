<!-- /*
* Template Name: Property
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Untree.co">
        <link rel="shortcut icon" href="productDetail_css/favicon.png">

        <meta name="description" content="" />
        <meta name="keywords" content="bootstrap, bootstrap5" />

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">


        <link rel="stylesheet" href="productDetail_css/fonts/icomoon/style.css">
        <link rel="stylesheet" href="productDetail_css/fonts/flaticon/font/flaticon.css">

        <link rel="stylesheet" href="productDetail_css/css/tiny-slider.css">
        <link rel="stylesheet" href="productDetail_css/css/aos.css">
        <link rel="stylesheet" href="productDetail_css/css/style.css">

        <title>Property &mdash; Free Bootstrap 5 Website Template by Untree.co</title>
    </head>
    <body>

        <div class="site-mobile-menu site-navbar-target">
            <div class="site-mobile-menu-header">
                <div class="site-mobile-menu-close">
                    <span class="icofont-close js-menu-toggle"></span>
                </div>
            </div>
            <div class="site-mobile-menu-body"></div>
        </div>

        <nav class="site-nav">
            <div class="container">
                <div class="menu-bg-wrap">
                    <div class="site-navigation">
                        <a href="index.html" class="logo m-0 float-start">Property</a>

                        <ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
                            <li><a href="index_2.jsp">Home</a></li>
                            <li class="has-children">
                                <a href="properties.html">Properties</a>
                                <ul class="dropdown">
                                    <li><a href="#">Buy Property</a></li>
                                    <li><a href="#">Sell Property</a></li>
                                    <li class="has-children">
                                        <a href="#">Dropdown</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Sub Menu One</a></li>
                                            <li><a href="#">Sub Menu Two</a></li>
                                            <li><a href="#">Sub Menu Three</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="services.html">Services</a></li>
                            <li><a href="about.html">About</a></li>
                            <li class="active"><a href="contact.html">Contact Us</a></li>
                        </ul>

                        <a href="#" class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
                            <span></span>
                        </a>

                    </div>
                </div>
            </div>
        </nav>


        <div class="hero page-inner overlay" style="background-image: url('productDetail_css/images/hero_bg_3.jpg');">

            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col-lg-9 text-center mt-5">
                        <h1 class="heading" data-aos="fade-up">5232 California AVE. 21BC</h1>

                        <nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
                            <ol class="breadcrumb text-center justify-content-center">
                                <li class="breadcrumb-item "><a href="index_2.jsp">Home</a></li>
                                <li class="breadcrumb-item "><a href="properties.html">Properties</a></li>
                                <li class="breadcrumb-item active text-white-50" aria-current="page">5232 California AVE. 21BC</li>
                            </ol>
                        </nav>


                    </div>
                </div>


            </div>
        </div>


        <div class="section">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-lg-7">
                        <div class="img-property-slide-wrap">
                            <div class="img-property-slide">
                                <img src="productDetail_css/images/img_1.jpg" alt="Image" class="img-fluid">
                                <img src="productDetail_css/images/img_2.jpg" alt="Image" class="img-fluid">
                                <img src="productDetail_css/images/img_3.jpg" alt="Image" class="img-fluid">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <h2 class="heading text-primary">1272 Fiddlers Green Rd House</h2>
                        <p class="meta">Ontario, Canada</p>
                        <p class="text-black-50">The property features a 6 bedroom, 13 bathroom mansion with over 26,000 square feet of living space. Additionally, there is a 5.2-acre estate with a 1/3-acre aerated pond, a 5210 square foot detached garage with lounge and wash bay, and a regulation-sized sports court with concussion-free flooring and a children's playground.</p>
                        <p class="text-black-50">The mansion boasts unique custom-molded ceilings in every room, a gourmet kitchen, grand living spaces, and a magnificent primary suite. The lower level has elevator access and features a professional gym & spa, party room, and a state-of-the-art 24-seat Dolby Atmos home theater with a 254-inch screen and a Kaleidoscope movie server.</p>
                        <p class="text-black-50">
                            <ul>
                                <li><span class="fa fa-bed"></span> 9 Beds</li>
                                <li><span class="fa fa-bath"></span> 10 Baths</li>
                                <li><span class="fa fa-share-square-o"></span> 1200 sq ft</li>
                            </ul>
                        </p>
                        <br/>
                        <form action="MainController" method="post">
                            <button type="submit" name="action" value="UserAddToCart" >Add to cart</button>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>

        <div class="site-footer">
            <div class="container">

                <div class="row">
                    <div class="col-lg-4">
                        <div class="widget">
                            <h3>Contact</h3>
                            <address>43 Raymouth Rd. Baltemoer, London 3910</address>
                            <ul class="list-unstyled links">
                                <li><a href="tel://11234567890">+1(123)-456-7890</a></li>
                                <li><a href="tel://11234567890">+1(123)-456-7890</a></li>
                                <li><a href="mailto:info@mydomain.com">info@mydomain.com</a></li>
                            </ul>
                        </div> <!-- /.widget -->
                    </div> <!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <div class="widget">
                            <h3>Sources</h3>
                            <ul class="list-unstyled float-start links">
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Vision</a></li>
                                <li><a href="#">Mission</a></li>
                                <li><a href="#">Terms</a></li>
                                <li><a href="#">Privacy</a></li>
                            </ul>
                            <ul class="list-unstyled float-start links">
                                <li><a href="#">Partners</a></li>
                                <li><a href="#">Business</a></li>
                                <li><a href="#">Careers</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="#">Creative</a></li>
                            </ul>
                        </div> <!-- /.widget -->
                    </div> <!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <div class="widget">
                            <h3>Links</h3>
                            <ul class="list-unstyled links">
                                <li><a href="#">Our Vision</a></li>
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Contact us</a></li>
                            </ul>

                            <ul class="list-unstyled social">
                                <li><a href="#"><span class="icon-instagram"></span></a></li>
                                <li><a href="#"><span class="icon-twitter"></span></a></li>
                                <li><a href="#"><span class="icon-facebook"></span></a></li>
                                <li><a href="#"><span class="icon-linkedin"></span></a></li>
                                <li><a href="#"><span class="icon-pinterest"></span></a></li>
                                <li><a href="#"><span class="icon-dribbble"></span></a></li>
                            </ul>
                        </div> <!-- /.widget -->
                    </div> <!-- /.col-lg-4 -->
                </div> <!-- /.row -->

                <div class="row mt-5">
                    <div class="col-12 text-center">
                        <!-- 
**==========
NOTE: 
Please don't remove this copyright link unless you buy the license here https://untree.co/license/  
**==========
                        -->

                        <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a> <!-- License information: https://untree.co/license/ -->
                        </p>

                    </div>
                </div>
            </div> <!-- /.container -->
        </div> <!-- /.site-footer -->


        <!-- Preloader -->
        <!--    <div id="overlayer"></div>
            <div class="loader">
                <div class="spinner-border" role="status">
                        <span class="visually-hidden">Loading...</span>
                </div>
            </div>-->


        <script src="productDetail_css/js/bootstrap.bundle.min.js"></script>
        <script src="productDetail_css/js/tiny-slider.js"></script>
        <script src="productDetail_css/js/aos.js"></script>
        <script src="productDetail_css/js/navbar.js"></script>
        <script src="productDetail_css/js/counter.js"></script>
        <script src="productDetail_css/js/custom.js"></script>
    </body>
</html>
