<!--Trang n�y trang ch�nh (d� login) for users -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Estate Agent a Real Estate Category Bootstrap Responsive Website Template | Home :: W3layouts</title>
        <!-- web fonts -->
        <link href="//fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Hind&display=swap" rel="stylesheet">
        <!-- //web fonts -->
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/style-starter.css">
    </head>
    <body>


        <!-- Top Menu 1 -->
        <section class="w3l-top-menu-1">
            <div class="top-hd">
                <div class="container">
                    <header class="row">
                        <div class="social-top col-lg-3 col-6">
                            <ul>
                                <li>Follow Us</li>
                                <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                                <li><a href="#"><span class="fa fa-instagram"></span></a> </li>
                                <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                                <li><a href="#"><span class="fa fa-vimeo"></span></a> </li>
                            </ul>
                        </div>
                        <div class="accounts col-lg-9 col-6">
                            <ul>
                                <li class="top_li1"><a href="GetAllProductsUser">Products</a></li>
                                <li class="top_li1">
                                    <c:if test="${sessionScope.LOGIN_USER == null}" >
                                        <c:redirect url = "homePage.jsp"></c:redirect>
                                    </c:if>
                                    ${sessionScope.LOGIN_USER.fullName}
                                </li>
                                <li class="top_li2">
                                    <c:url var="logout" value="MainController" >    
                                        <c:param name="action" value="Logout"></c:param>
                                    </c:url>
                                    <a href="${logout}">Logout</a>
                                </li>
                                <li class="top_li3"><a href="viewUserCart.jsp">View Cart</a></li>
                            </ul>
                        </div>

                    </header>
                </div>
            </div>
        </section>
        <!-- //Top Menu 1 -->
        <section class="w3l-bootstrap-header">
            <nav class="navbar navbar-expand-lg navbar-light py-lg-2 py-2">
                <div class="container">
                    <a class="navbar-brand" href="index_2.jsp"><span class="fa fa-home"></span> Estate Agent</a>
                    <!-- if logo is image enable this   
                  <a class="navbar-brand" href="#index.html">
                      <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                  </a> -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon fa fa-bars"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="index_2.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.html">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="services.html">Services</a>
                            </li>

                            <li class="nav-item mr-0">
                                <a class="nav-link" href="contact.html">Contact</a>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
        </section>
        <section class="form-12" id="home">
            <div class="form-12-content">
                <div class="container">
                    <div class="grid grid-column-2 ">
                        <div class="column2">
                        </div>
                        <div class="column1">

                            <div class="heading text-center mx-auto">
                                <h3>Welcome ${sessionScope.LOGIN_USER.fullName}</h3>
                            </div>
                            <br/>

                            <form action="MainController" method="post">
                                <div class="blog-search form d-flex search-form">
                                    <input type="text" name="search_1" value="${param.search}" placeholder="Enter Location, Property, Landmark" required="" />
                                    <button type="submit" class="btn search-btn" value="Search" ><span class="fa fa-search"></span></button>
                                    <input type="hidden" name="action" value="SearchUserPro" />
                                </div>
                            </form>        

                        </div>
                    </div>
                </div>
        </section>
        <section class="locations-1" id="locations">
            <div class="locations py-5">
                <div class="container py-md-3">
                    <div class="heading text-center mx-auto">
                        <h3 class="head">Popular Locations</h3>
                        <p class="my-3 head "> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                            Nulla mollis dapibus nunc, ut rhoncus
                            turpis sodales quis. Integer sit amet mattis quam.</p>
                    </div>
                    <div class="row mt-3 pt-5">
                        <div class="col-md-4 col-sm-6">
                            <div class="box16">
                                <img class="img-fluid" src="assets/images/g1.jpg" alt="">
                                <div class="box-content">
                                    <h3 class="title">Austin</h3>
                                    <span class="post">2 Listings</span>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="box16">
                                <img class="img-fluid" src="assets/images/g2.jpg" alt="">
                                <div class="box-content">
                                    <h3 class="title">Chicago</h3>
                                    <span class="post">2 Listings</span>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 mt-lg-0 pt-lg-0 mt-md-4 pt-md-2">
                            <div class="box16">
                                <img class="img-fluid" src="assets/images/g3.jpg" alt="">
                                <div class="box-content">
                                    <h3 class="title">Dallas</h3>
                                    <span class="post">2 Listings</span>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 mt-md-4 pt-md-2">
                            <div class="box16">
                                <img class="img-fluid" src="assets/images/g4.jpg" alt="">
                                <div class="box-content">
                                    <h3 class="title">Houston</h3>
                                    <span class="post">2 Listings</span>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 mt-md-4 pt-md-2">
                            <div class="box16">
                                <img class="img-fluid" src="assets/images/g5.jpg" alt="">
                                <div class="box-content">
                                    <h3 class="title">Jacksonville</h3>
                                    <span class="post">2 Listings</span>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 mt-md-4 pt-md-2">
                            <div class="box16">
                                <img class="img-fluid" src="assets/images/g6.jpg" alt="">
                                <div class="box-content">
                                    <h3 class="title">New Jersey</h3>
                                    <span class="post">2 Listings</span>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="w3l-services2" id="services">
            <div class="features-with-17_sur py-5">
                <div class="container py-md-3">
                    <div class="heading text-center mx-auto">
                        <h3 class="head text-white">What We Offer</h3>
                        <p class="my-3 head "> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                            Nulla mollis dapibus nunc, ut rhoncus
                            turpis sodales quis. Integer sit amet mattis quam.</p>
                    </div>
                    <div class="row pt-5 mt-3">
                        <div class="col-lg-5 features-with-17-left_sur">
                            <h4 class="lft-head">We?re Offering Unmatched Services</h4>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero, dolore. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero, dolore. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla mollis dapibus nunc Integer sit amet mattis quam.</p>
                            <p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla mollis dapibus nunc, ut rhoncus turpis sodales quis. Integer sit amet mattis quam.</p>
                            <div class="stats-1">
                                <div class="stats-1-left">
                                    <h4>2300</h4>
                                    <h6>Clients</h6>
                                </div>
                                <div class="stats-1-left">
                                    <h4>16</h4>
                                    <h6>Awards</h6>
                                </div>
                                <div class="stats-1-left">
                                    <h4>2536</h4>
                                    <h6>Projects</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 my-lg-0 my-5 align-self-center features-with-17-right_sur">
                            <div class="features-with-17-right-tp_sur">
                                <div class="features-with-17-left1">
                                    <span class="fa fa-laptop s4"></span>		
                                </div>
                                <div class="features-with-17-left2">
                                    <h6><a href="#url">Fastest Service</a></h6>
                                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero, dolore.</p>		
                                </div>
                            </div>
                            <div class="features-with-17-right-tp_sur">
                                <div class="features-with-17-left1">
                                    <span class="fa fa-database s5"></span>		
                                </div>
                                <div class="features-with-17-left2">
                                    <h6><a href="#url">Largest Real Estate</a></h6>
                                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero, dolore.</p>			
                                </div>
                            </div>
                            <div class="features-with-17-right-tp_sur">
                                <div class="features-with-17-left1">
                                    <span class="fa fa-lock s3"></span>		
                                </div>
                                <div class="features-with-17-left2">
                                    <h6><a href="#url">Property Insurance</a></h6>
                                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero, dolore.</p>	
                                </div>
                            </div>
                            <div class="features-with-17-right-tp_sur">
                                <div class="features-with-17-left1">
                                    <span class="fa fa-codepen s2"></span>		
                                </div>
                                <div class="features-with-17-left2">
                                    <h6><a href="#url">Doorstep Process</a></h6>
                                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero, dolore.</p>	
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </section>
                                    
                  
        <section class="grids-4" id="properties">
            <div id="grids4-block" class="py-5">
                <div class="container py-md-3">
                    <div class="heading text-center mx-auto">
                        <h3 class="head">Recommended properties</h3>
                        <p class="my-3 head"> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                            Nulla mollis dapibus nunc, ut rhoncus
                            turpis sodales quis. Integer sit amet mattis quam.</p>
                    </div>
                        <div class="row mt-5 pt-3">
                            <div class="grids4-info  col-lg-4 col-md-6">
                                <a href="#"><img src="assets/images/g7.jpg" class="img-fluid" alt=""></a>
                                <ul class="location-top">
                                    <li class="rent">For Rent</li>
                                    <li class="open-1">Open House</li>
                                </ul>
                                <div class="info-bg">
                                    <h5><a href="proDetail?proId=${pro.productID}">Dan Bilzerian's bel air</a></h5>
                                    <p>${pro.productPrice}</p>
                                    <ul>
                                        <li><span class="fa fa-bed"></span> 4 Beds</li>
                                        <li><span class="fa fa-bath"></span> 3 Baths</li>
                                        <li><span class="fa fa-share-square-o"></span> 1200 sq ft</li>
                                    </ul>
                                </div>
                            </div>       
                            <div class="grids4-info col-lg-4 col-md-6 mt-md-0 mt-5">
                                <a href="#"><img src="assets/images/g8.jpg" class="img-fluid" alt=""></a>
                                <ul class="location-top">
                                    <li class="sale">For Sale</li>
                                    <li class="open-1">Open House</li>
                                </ul>
                                <div class="info-bg">
                                    <h5><a href="#">2750 E Cedar Avenue Gem</a></h5>
                                    <p>$10,695,000</p>
                                    <ul>
                                        <li><span class="fa fa-bed"></span> 7 Beds</li>
                                        <li><span class="fa fa-bath"></span> 8 Baths</li>
                                        <li><span class="fa fa-share-square-o"></span>  11,546 sq ft</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="grids4-info col-lg-4 col-md-6 mt-lg-0 mt-5">
                                <a href="#"><img src="assets/images/g7.jpg" class="img-fluid" alt=""></a>
                                <ul class="location-top">
                                    <li class="rent">For Rent</li>
                                    <li class="open-1">Open House</li>
                                </ul>
                                <div class="info-bg">
                                    <h5><a href="#">House Rent in Hydepark</a></h5>
                                    <p>$ 2,500 /per month</p>
                                    <ul>
                                        <li><span class="fa fa-bed"></span> 4 Beds</li>
                                        <li><span class="fa fa-bath"></span> 3 Baths</li>
                                        <li><span class="fa fa-share-square-o"></span> 1200 sq ft</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="grids4-info  col-lg-4 col-md-6 mt-5">
                                <a href="#"><img src="assets/images/g8.jpg" class="img-fluid" alt=""></a>
                                <ul class="location-top">
                                    <li class="sale">For Sale</li>
                                    <li class="open-1">Open House</li>
                                </ul>
                                <div class="info-bg">
                                    <h5><a href="#">Apartment in Memorial Texas</a></h5>
                                    <p>$ 220,000 550 / Sqft</p>
                                    <ul>
                                        <li><span class="fa fa-bed"></span> 5 Beds</li>
                                        <li><span class="fa fa-bath"></span> 3 Baths</li>
                                        <li><span class="fa fa-share-square-o"></span> 1200 sq ft</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="grids4-info  col-lg-4 col-md-6 mt-5">
                                <a href="#"><img src="assets/images/g9.jpg" class="img-fluid" alt=""></a>
                                <ul class="location-top">
                                    <li class="rent">For Rent</li>
                                    <li class="open-1">Open House</li>
                                </ul>
                                <div class="info-bg">
                                    <h5><a href="#">Villa in Miami beach Florida</a></h5>
                                    <p>$ 150,000 500 / Per Sqft</p>
                                    <ul>
                                        <li><span class="fa fa-bed"></span> 2 Beds</li>
                                        <li><span class="fa fa-bath"></span> 1 Baths</li>
                                        <li><span class="fa fa-share-square-o"></span> 1200 sq ft</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="grids4-info  col-lg-4 col-md-6 mt-5">
                                <a href="#"><img src="assets/images/g10.jpg" class="img-fluid" alt=""></a>
                                <ul class="location-top">
                                    <li class="sale">For Sale</li>
                                    <li class="open-1">Open House</li>
                                </ul>
                                <div class="info-bg">
                                    <h5><a href="#">Apartment Jacksonville</a></h5>
                                    <p>$ 750 /per month</p>
                                    <ul>
                                        <li><span class="fa fa-bed"></span> 4 Beds</li>
                                        <li><span class="fa fa-bath"></span> 3 Baths</li>
                                        <li><span class="fa fa-share-square-o"></span> 1200 sq ft</li>
                                    </ul>
                                </div>
                            </div>
                        
                        </div>
                </div>
            </div>
        </section>
        
        
        <section class="w3l-apply-6">
            <!-- /apply-6-->
            <div class="apply-info py-5">
                <div class="container py-lg-3">
                    <div class="heading text-center mx-auto">
                        <h3 class="head text-white">What Makes Us The Preferred Choice</h3>
                        <p class="my-3 head "> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                            Nulla mollis dapibus nunc, ut rhoncus
                            turpis sodales quis. Integer sit amet mattis quam.</p>
                    </div>
                    <div class="apply-grids-info row pt-5 mt-3">
                        <div class="apply-gd-left col-lg-7">
                            <div class="row">
                                <div class="col-sm-6 sub-apply">
                                    <div class="apply-sec-info text-center">

                                        <span class="fa fa-university mb-4"></span>

                                        <div class="appyl-sub-icon-info">
                                            <h5><a href="#">Maximum Choices</a></h5>
                                            <p>Lorem ipsum dolor sit amet,Ea consequuntur.</p>
                                        </div>

                                    </div>

                                </div>
                                <div class="col-sm-6 sub-apply mt-sm-0 mt-5">
                                    <div class="apply-sec-info text-center">

                                        <span class="fa fa-bath mb-4"></span>

                                        <div class="appyl-sub-icon-info">
                                            <h5><a href="#">Buyers Trust Us</a></h5>
                                            <p>Lorem ipsum dolor sit amet,Ea consequuntur.</p>
                                        </div>

                                    </div>

                                </div>
                                <div class="col-sm-6 sub-apply mt-5">
                                    <div class="apply-sec-info text-center">

                                        <span class="fa fa-cubes mb-4"></span>

                                        <div class="appyl-sub-icon-info">
                                            <h5><a href="#">Seller Prefer Us</a></h5>
                                            <p>Lorem ipsum dolor sit amet,Ea consequuntur.</p>
                                        </div>

                                    </div>

                                </div>
                                <div class="col-sm-6 sub-apply mt-5">
                                    <div class="apply-sec-info text-center">

                                        <span class="fa fa-hospital-o mb-4"></span>

                                        <div class="appyl-sub-icon-info">
                                            <h5><a href="#">Expert Guidance</a></h5>
                                            <p>Lorem ipsum dolor sit amet,Ea consequuntur.</p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="apply-gd-right col-lg-5 mt-lg-0 mt-5">
                            <div class="apply-form p-md-5 p-4 mx-auto bg-white mw-100">
                                <h4>What Makes Us </h4>
                                <p class="mt-3">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero, dolore. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero, dolore. Vestibulum ante ipsum primis in Nulla mollis dapibus nunc Integer sit amet mattis quam.</p>
                                <p class="mt-3"> Vero, dolore. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla mollis dapibus nunc Integer sit amet mattis quam.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="w3l-testimonials" id="testimonials">
            <div class="customers-6-content py-5">
                <div class="container py-lg-3">
                    <div class="heading text-center mx-auto">
                        <h3 class="head">Happy Clients</h3>
                        <p class="my-3 head "> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                            Nulla mollis dapibus nunc, ut rhoncus
                            turpis sodales quis. Integer sit amet mattis quam.</p>
                    </div>

                    <div id="customerhnyCarousel" class="carousel slide" data-ride="carousel">

                        <ol class="carousel-indicators">
                            <li data-target="#customerhnyCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#customerhnyCarousel" data-slide-to="1"></li>
                            <li data-target="#customerhnyCarousel" data-slide-to="2"></li>
                        </ol>
                        <!-- Carousel items -->
                        <div class="carousel-inner pb-5">

                            <div class="carousel-item active">
                                <div class="customer row py-5 mt-3">
                                    <div class="col-lg-4 col-md-6">
                                        <div class="card">
                                            <img class="card-img-top img-responsive" src="assets/images/c1.jpg" alt="">
                                            <div class="card-body">
                                                <span class="fa fa-quote-left" aria-hidden="true"></span>
                                                <h3 class="card-title">Henry Nicholas</h3>
                                                <p class="sub-title mb-3">Engineer</p>
                                                <p class="card-text text-center mb-4">  Lorem ipsum dolor sit amet, Ea consequuntur illum facere aperiam sequi optio
                                                </p>
                                                <div class="text-right">
                                                    <span class="fa fa-quote-right" aria-hidden="true"></span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 off-testi-2">
                                        <div class="card">
                                            <img class="card-img-top img-responsive" src="assets/images/c2.jpg" alt="">
                                            <div class="card-body">
                                                <span class="fa fa-quote-left" aria-hidden="true"></span>
                                                <h3 class="card-title">Mark Waugh</h3>
                                                <p class="sub-title mb-3">Engineer</p>
                                                <p class="card-text text-center mb-4">  Lorem ipsum dolor sit amet, Ea consequuntur illum facere aperiam sequi optio
                                                </p>
                                                <div class="text-right">
                                                    <span class="fa fa-quote-right" aria-hidden="true"></span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 offset-md-3 offset-lg-0 col-md-6 off-testi">
                                        <div class="card">
                                            <img class="card-img-top img-responsive" src="assets/images/c3.jpg" alt="">
                                            <div class="card-body">
                                                <span class="fa fa-quote-left" aria-hidden="true"></span>
                                                <h3 class="card-title">Sarina Willams</h3>
                                                <p class="sub-title mb-3">Engineer</p>
                                                <p class="card-text text-center mb-4">  Lorem ipsum dolor sit amet, Ea consequuntur illum facere aperiam sequi optio
                                                </p>
                                                <div class="text-right">
                                                    <span class="fa fa-quote-right" aria-hidden="true"></span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--.item-->

                            <div class="carousel-item">
                                <div class="customer row py-5 mt-3">
                                    <div class="col-lg-4 col-md-6">
                                        <div class="card">
                                            <img class="card-img-top img-responsive" src="assets/images/c2.jpg" alt="">
                                            <div class="card-body">
                                                <span class="fa fa-quote-left" aria-hidden="true"></span>
                                                <h3 class="card-title">Mark Waugh</h3>
                                                <p class="sub-title mb-3">Engineer</p>
                                                <p class="card-text text-center mb-4">  Lorem ipsum dolor sit amet, Ea consequuntur illum facere aperiam sequi optio
                                                </p>
                                                <div class="text-right">
                                                    <span class="fa fa-quote-right" aria-hidden="true"></span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 off-testi-2">
                                        <div class="card">
                                            <img class="card-img-top img-responsive" src="assets/images/c3.jpg" alt="">
                                            <div class="card-body">
                                                <span class="fa fa-quote-left" aria-hidden="true"></span>
                                                <h3 class="card-title">Sarina Willams</h3>
                                                <p class="sub-title mb-3">Engineer</p>
                                                <p class="card-text text-center mb-4">  Lorem ipsum dolor sit amet, Ea consequuntur illum facere aperiam sequi optio
                                                </p>
                                                <div class="text-right">
                                                    <span class="fa fa-quote-right" aria-hidden="true"></span>
                                                </div>

                                            </div>
                                        </div>


                                    </div>
                                    <div class="col-lg-4 offset-md-3 offset-lg-0 col-md-6 off-testi">
                                        <div class="card">
                                            <img class="card-img-top img-responsive" src="assets/images/c1.jpg" alt="">
                                            <div class="card-body">
                                                <span class="fa fa-quote-left" aria-hidden="true"></span>
                                                <h3 class="card-title">Henry Nicholas</h3>
                                                <p class="sub-title mb-3">Engineer</p>
                                                <p class="card-text text-center mb-4">  Lorem ipsum dolor sit amet, Ea consequuntur illum facere aperiam sequi optio
                                                </p>
                                                <div class="text-right">
                                                    <span class="fa fa-quote-right" aria-hidden="true"></span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!--.item-->
                            <div class="carousel-item">
                                <div class="customer row py-5 mt-3">
                                    <div class="col-lg-4 col-md-6">
                                        <div class="card">
                                            <img class="card-img-top img-responsive" src="assets/images/c3.jpg" alt="">
                                            <div class="card-body">
                                                <span class="fa fa-quote-left" aria-hidden="true"></span>
                                                <h3 class="card-title">Sarina Willams</h3>
                                                <p class="sub-title mb-3">Engineer</p>
                                                <p class="card-text text-center mb-4">  Lorem ipsum dolor sit amet, Ea consequuntur illum facere aperiam sequi optio
                                                </p>
                                                <div class="text-right">
                                                    <span class="fa fa-quote-right" aria-hidden="true"></span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 off-testi-2">
                                        <div class="card">
                                            <img class="card-img-top img-responsive" src="assets/images/c2.jpg" alt="">
                                            <div class="card-body">
                                                <span class="fa fa-quote-left" aria-hidden="true"></span>
                                                <h3 class="card-title">Mark Waugh</h3>
                                                <p class="sub-title mb-3">Engineer</p>
                                                <p class="card-text text-center mb-4">  Lorem ipsum dolor sit amet, Ea consequuntur illum facere aperiam sequi optio
                                                </p>
                                                <div class="text-right">
                                                    <span class="fa fa-quote-right" aria-hidden="true"></span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 offset-md-3 offset-lg-0 col-md-6 off-testi">

                                        <div class="card">
                                            <img class="card-img-top img-responsive" src="assets/images/c1.jpg" alt="">
                                            <div class="card-body">
                                                <span class="fa fa-quote-left" aria-hidden="true"></span>
                                                <h3 class="card-title">Henry Nicholas</h3>
                                                <p class="sub-title mb-3">Engineer</p>
                                                <p class="card-text text-center mb-4">  Lorem ipsum dolor sit amet, Ea consequuntur illum facere aperiam sequi optio
                                                </p>
                                                <div class="text-right">
                                                    <span class="fa fa-quote-right" aria-hidden="true"></span>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--.item-->

                        </div>
                        <!--.carousel-inner-->
                    </div>
                </div>
            </div>
            <!--//customers -->
        </section>
        <!-- specifications -->
        <section class="w3l-specifications-9">
            <div class="main-w3 py-5" id="stats">
                <div class="container py-md-3">
                    <div class="heading text-center mx-auto">
                        <h3 class="head">We Are Here For You</h3>
                        <p class="my-3 head "> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                            Nulla mollis dapibus nunc, ut rhoncus
                            turpis sodales quis. Integer sit amet mattis quam.</p>
                    </div>
                    <div class="main-cont-wthree-fea row pt-3 mt-5">
                        <div class="grids-speci1 col-lg-3 col-6">
                            <div class="spec-2 text-center">
                                <span class="fa fa-map-marker"></span> 
                                <h3 class="title-spe">180+</h3>
                                <p>Property Locations</p>
                            </div>
                        </div>
                        <div class="grids-speci1 midd-eff-spe col-lg-3 col-6">
                            <div class="spec-2 text-center">
                                <span class="fa fa-users"></span>
                                <h3 class="title-spe">100+</h3>
                                <p>Professional Agents</p>
                            </div>
                        </div>
                        <div class="grids-speci1 las-but col-lg-3 col-6  mt-lg-0 mt-4">
                            <div class="spec-2 text-center">
                                <span class="fa fa-building"></span>
                                <h3 class="title-spe">250+</h3>
                                <p>Property for Sell</p>
                            </div>
                        </div>
                        <div class="grids-speci1 las-t col-lg-3 col-6  mt-lg-0 mt-4">
                            <div class="spec-2 text-center">
                                <span class="fa fa-home"></span>
                                <h3 class="title-spe">3200+ </h3>
                                <p>Property for Rent</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- //specifications -->
        </section>

        <!-- grids block 5 -->
        <section class="w3l-footer-29-main" id="footer">
            <div class="footer-29">
                <div class="grids-forms-1 pb-5">
                    <div class="container">
                        <div class="grids-forms">
                            <div class="main-midd">
                                <h4 class="title-head">Newsletter ? Get Updates & Latest News</h4>

                            </div>
                            <div class="main-midd-2">
                                <form action="#" method="post" class="rightside-form">
                                    <input type="email" name="email" placeholder="Enter your email">
                                    <button class="btn" type="submit">Subscribe</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container pt-5">

                    <div class="d-grid grid-col-4 footer-top-29">
                        <div class="footer-list-29 footer-1">
                            <h6 class="footer-title-29">About Us</h6>
                            <ul>
                                <p> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae </p>
                            </ul>
                            <div class="main-social-footer-29">
                                <h6 class="footer-title-29">Social Links</h6>
                                <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
                                <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
                                <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
                                <a href="#google-plus" class="google-plus"><span class="fa fa-google-plus"></span></a>
                                <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
                            </div>
                        </div>
                        <div class="footer-list-29 footer-2">
                            <h6 class="footer-title-29"> Useful Links</h6>
                            <ul>
                                <li><a href="services.html">Management</a></li>
                                <li><a href="services.html">Reporting</a></li>
                                <li><a href="services.html">Tracking</a></li>
                                <li><a href="services.html">All Users</a></li>
                                <li><a href="contact.html">Support</a></li>
                            </ul>
                        </div>
                        <div class="footer-list-29 footer-3">
                            <div class="properties">
                                <h6 class="footer-title-29">Featured Properties</h6>
                                <a href="#"><img src="assets/images/g7.jpg" class="img-responsive" alt=""><p>We Are Leading International Consultiing Agency</p></a>
                                <a href="#"><img src="assets/images/g8.jpg" class="img-responsive" alt=""><p>Digital Marketing Agency all the foundational tools</p></a>
                                <a href="#"><img src="assets/images/g9.jpg" class="img-responsive" alt=""><p>Doloremque velit sapien labore eius itna</p></a>
                            </div>
                        </div>
                        <div class="footer-list-29 footer-4">
                            <h6 class="footer-title-29"> >Quick Links</h6>
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li><a href="about.html">About</a></li>
                                <li><a href="services.html">Services</a></li>
                                <li><a href="#"> Blog</a></li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="bottom-copies text-center">
                        <p class="copy-footer-29">� 2020 Estate Agent. All rights reserved | Designed by <a href="https://w3layouts.com">W3layouts</a></p>

                    </div>
                </div>
            </div>
            <!-- move top -->
            <button onclick="topFunction()" id="movetop" title="Go to top">
                <span class="fa fa-angle-up"></span>
            </button>
            <script>
                // When the user scrolls down 20px from the top of the document, show the button
                window.onscroll = function () {
                    scrollFunction()
                };

                function scrollFunction() {
                    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                        document.getElementById("movetop").style.display = "block";
                    } else {
                        document.getElementById("movetop").style.display = "none";
                    }
                }

                // When the user clicks on the button, scroll to the top of the document
                function topFunction() {
                    document.body.scrollTop = 0;
                    document.documentElement.scrollTop = 0;
                }
            </script>
            <!-- /move top -->
        </section>
        <!-- // grids block 5 -->
        <script src="assets/js/jquery-3.3.1.min.js"></script>
        <!-- //footer-28 block -->
    </section>

    <script>
                $(function () {
                    $('.navbar-toggler').click(function () {
                        $('body').toggleClass('noscroll');
                    })
                });
    </script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
    </script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>

    <!-- Smooth scrolling -->


</body>

</html>
<!-- // grids block 5 -->
