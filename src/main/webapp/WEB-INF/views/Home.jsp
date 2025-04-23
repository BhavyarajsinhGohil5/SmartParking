<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<title>Home</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assets/img/logo4.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="ashion/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="ashion/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/css/util.css">
	<link rel="stylesheet" type="text/css" href="ashion/css/main.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="assets2/css/bootstrap.css">
<link href="https://fonts.googleapis.com/css?family=Raleway:400,700|Roboto:400,700&amp;display=swap" rel="stylesheet">
<link href="assets2/css/style.css" rel="stylesheet">
<link href="assets2/css/responsive.css" rel="stylesheet">

</head>



<body class="animsition">
	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						Secure and convenient parking – available 24/7 at prime locations.
					</div>

					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m trans-04 p-lr-25">
							Help & FAQs
						</a>

						<a href="#" class="flex-c-m trans-04 p-lr-25">
							My Account
						</a>

						<a href="#" class="flex-c-m trans-04 p-lr-25">
							EN
						</a>

						<a href="#" class="flex-c-m trans-04 p-lr-25">
							RUP
						</a>	
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="#" class="logo">
						<img src="ashion\images\icons\smartparking.PNG" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu">
								<a href="home">Home</a>
							</li>

							<li>
								<a href="searchparking">Book A Spot</a>
							</li>

							<li >
								<a href="#features">Features</a>
							</li>

							<li> 
								<a href="#profile">Profile</a>
							</li>
							
							<li>
								<a href="mybookings">My Bookings</a>
							</li>
							
							<li>
								<a href="about">About</a>
							</li>

							<li>
								<a href="contactus">Contact</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					 <div class="wrap-icon-header flex-w flex-r-m">
				

						
						<a  class="flex-c-m trans-04 p-lr-25">
							<img src="${user.profilePicPath}"  height="40px" width="40px" alt="Profile" class="rounded-circle" ><br>
<div class="d-flex flex-column p-l-5">
            <span class="font-weight-bold" style="color: white;">${user.firstName} ${user.lastName}</span>
            <span class="text-muted" style="font-size: 0.9em;">${user.email}</span>
        </div>
						</a>
						
					</div> 
					<%--<div class="wrap-icon-header flex-w flex-r-m align-items-center">
    <a class="flex-c-m trans-04 p-lr-25 d-flex align-items-center gap-3" style="text-decoration: none; color: inherit;">
        <img src="${user.profilePicPath}" height="40" width="40" alt="Profile Picture"  />

        <div class="d-flex flex-column">
            <span class="font-weight-bold">${user.firstName} ${user.lastName}</span>
            <span class="text-muted" style="font-size: 0.9em;">${user.email}</span>
        </div>
    </a>
</div>--%>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="home"><img src="ashion\images\icons\smartparking.PNG" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				
<a href="#" class="flex-c-m trans-04 p-lr-25">
							<img src="${user.profilePicPath}"  height="40px" width="40px" alt="Profile" class="rounded-circle" ><br>
							<span> ${user.firstName} ${user.lastName}</span>
							<span> ${user.email}</span>
						</a>

				
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						Secure and convenient parking – available 24/7 at prime locations.
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m p-lr-10 trans-04">
							Help & FAQs
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							My Account
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							EN
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							RUP
						</a>
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li>
					<a href="home">Home</a>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="searchparking">Book A Spot</a>
				</li>

				<li>
					<a href="#features" >Features</a>
				</li>
				
				<li> 
					<a href="#profile">Profile</a>
				</li>
				
				<li>
					<a href="viewreservation">Blog</a>
				</li>

				<li>
					<a href="about">About</a>
				</li>

				<li>
					<a href="contactus">Contact</a>
				</li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="ashion/images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>



		

	<!-- Banner -->
<%-- 	<div class="sec-banner bg0 p-t-80 p-b-50">
		<div class="container">
	<div class="p-b-10">
				<h3 class="ltext-103 cl5">
					Product Overview
				</h3>
			</div>
	<div>
	<h2>Home</h2>


Welcome , ${user.firstName} 
	
	<br>
		<img src="${user.profilePicPath}"  height="200px" width="200px"/>
	
	<br>
<a href="logout">Logout</a> 
	
<a href="websitebody">WebsiteBody</a> 
<a href="searchparking">BookHere</a>
<a href="useraddvehicle">VehicleDetails</a>
<a href="useraddreservation">ReservationDetails</a>
<a href="checkout">Checkout</a> 
<a href="mybookings">Bookings</a>
</div>
			<div class="row">
				
		</div>
	</div>
		</div>	 --%>
    <!-- Main content -->
<!--     <div class="hero_area ">

  slider section
  <section class="slider_section ">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      </ol>

      <div class="carousel-inner">
        Slide 1
        <div class="carousel-item active">
          <div class="container">
            <div class="row align-items-center">
              <div class="col-md-7">
                <div class="detail-box">
                  <h1 class="display-4 font-weight-bold">
                    Reserve Parking <br> In Seconds
                  </h1>
                  <p class="mt-3 mb-4">
                    Say goodbye to circling for spots! Book safe, affordable parking online at your convenience.
                  </p>
                  <a href="contact" class="btn btn-primary px-4 py-2 rounded-pill">
                    Contact Us
                  </a>
                </div>
              </div>
              <div class="col-md-5 text-center">
                <img src="assets2/images/parking-slide1.png" alt="Parking Lot" class="img-fluid animated fadeInRight">
              </div>
            </div>
          </div>
        </div>

        Slide 2
        <div class="carousel-item">
          <div class="container">
            <div class="row align-items-center">
              <div class="col-md-7">
                <div class="detail-box">
                  <h1 class="display-4 font-weight-bold">
                    Smart Parking <br> For Smarter Cities
                  </h1>
                  <p class="mt-3 mb-4">
                    Track availability, view charges, and pay securely—all from your device. Park smarter, stress less.
                  </p>
                  <a href="about.jsp" class="btn btn-outline-light px-4 py-2 rounded-pill">
                    Learn More
                  </a>
                </div>
              </div>
              <div class="col-md-5 text-center">
                <img src="assets2/images/parking-slide2.png" alt="Smart Parking" class="img-fluid animated fadeInLeft">
              </div>
            </div>
          </div>
        </div>
      </div>

      Controls
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </section>
  end slider section

</div>

     -->
  <div class="hero_area">
    <!-- slider section -->
    <section class="slider_section">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        </ol>

        <div class="carousel-inner">
          <!-- Slide 1 -->
          <div class="carousel-item active">
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <div class="detail-box text-center">
                    <h1 class="text font-weight-">
                      Hassle-Free <br> Parking Solutions
                    </h1>
                    <p class="mt-3 mb-4">
                      Reserve your spot instantly with real-time availability, secure payments, and trusted locations across the city.
                    </p>
                    <a href="searchparking" class="btn btn-primary px-4 py-2 rounded-pill">
                      Book Now !
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item">
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <div class="detail-box text-center">
                    <h1 class="text font-weight">
                      Smart Parking <br> Made Simple
                    </h1>
                    <p class="mt-3 mb-4">
                      Book your parking space in advance and enjoy peace of mind wherever you go – 24/7 access and support.
                    </p>
                    <a href="contactus" class="btn btn-primary px-4 py-2 rounded-pill">
                      Contact Us
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
   
        </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          
          
        </a>
      </div>
    </section>
    <!-- end slider section -->
  </div>
    
    <div id="features" class="hero_area ">
    <section class="feature_section layout_padding2">
  <div class="container">
 <div class="heading_container heading_left mb-5">
 <div class="col text-center">
        <h2 class="text-uppercase mb-2">
          Why Choose Smart Parking?
        </h2><br>
        <p style=" margin: 0; padding-bottom: 20px;">
          Experience a smarter, faster, and stress-free way to park your vehicle anytime, anywhere.
        </p>
      </div></div>
    <div class="row">
      <div class="col-md-4">
        <div class="box">
          <div class="img-box">
            <img src="assets2/images/money.png" alt="Save Money Icon">
          </div>
          <div class="detail-box">
            <h5>Save Money</h5>
            <p>
              Get access to the best parking rates in your city. No hidden charges, just fair pricing for every booking.
            </p>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="box">
          <div class="img-box">
            <img src="assets2/images/clock.png" alt="Save Time Icon">
          </div>
          <div class="detail-box">
            <h5>Save Time</h5>
            <p>
              Pre-book your spot and skip the hassle of searching for parking. Arrive and park instantly—zero wait time.
            </p>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="box">
          <div class="img-box">
            <img src="assets2/images/man.png" alt="Save Stress Icon">
          </div>
          <div class="detail-box">
            <h5>Save Stress</h5>
            <p>
              Enjoy peace of mind with secured parking, live tracking, and instant confirmations right from your device.
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    </div>
    
 <!-- Main Content -->
<div  class="sec-banner bg0 p-t-500 p-b-50">
  <div id="profile"  class="container">

    <!-- Welcome Header -->
    <div  class="p-b-10 text-center">
      <h3 class="ltext-103 cl5">Welcome to Your Dashboard</h3>
    </div>

    <!-- User Profile Card -->
    <div class="d-flex justify-content-center mb-5">
      <div class="card shadow-lg border-0 rounded" style="max-width: 700px; width: 100%;">
        <div class="card-body text-center">
          <img src="${user.profilePicPath}" alt="Profile Picture" class="rounded-circle mb-3" height="120" width="120" />
          <h4 class="card-title mb-3">${user.firstName} ${user.lastName}</h4>

          <ul class="list-group list-group-flush text-start px-4">
  <li class="list-group-item">
    <i class="fas fa-envelope text-primary me-3"></i>
    <strong>Email:</strong> ${user.email}
  </li>
  <li class="list-group-item">
    <i class="fas fa-phone text-success me-3"></i>
    <strong>Contact:</strong> ${user.contactNum}
  </li>
  <li class="list-group-item">
    <i class="fas fa-venus-mars text-warning me-3"></i>
    <strong>Gender:</strong> ${user.gender}
  </li>
  <li class="list-group-item">
    <i class="fas fa-city text-info me-3"></i>
    <strong>City:</strong> ${user.city}
  </li>
</ul>

        </div>
      </div>
    </div>

<!--     Quick Access Links
    <div class="text-center m-t-40">
      <h4 class="cl0">Quick Access Links</h4>
      <div class="row justify-content-center">
        <div class="col-md-4">
          <a href="websitebody" class="btn btn-primary w-full m-b-20">Website Body</a>
          <a href="searchparking" class="btn btn-info w-full m-b-20">Book Here</a>
          <a href="useraddvehicle" class="btn btn-warning w-full m-b-20">Add Vehicle</a>
          <a href="useraddreservation" class="btn btn-success w-full m-b-20">Add Reservation</a>
        </div>
        <div class="col-md-4">
          <a href="checkout" class="btn btn-danger w-full m-b-20">Checkout</a>
          <a href="mybookings" class="btn btn-secondary w-full m-b-20">My Bookings</a>
          <a href="logout" class="btn btn-dark w-full m-b-20">Logout</a>
        </div>
      </div>
    </div> -->

  </div>
</div>




	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Categories
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="searchparking" class="stext-107 cl7 hov-cl1 trans-04">
								Book Now
							</a>
						</li>

						<li class="p-b-10">
							<a href="#features" class="stext-107 cl7 hov-cl1 trans-04">
								Features
							</a>
						</li>

						<li class="p-b-10">
							<a href="#profile" class="stext-107 cl7 hov-cl1 trans-04">
								Profile
							</a>
						</li>

						<li class="p-b-10">
							<a href="mybookings" class="stext-107 cl7 hov-cl1 trans-04">
								My Bookings
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Help
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="contact" class="stext-107 cl7 hov-cl1 trans-04">
								Contact Us
							</a>
						</li>
<!-- 
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Returns 
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Shipping
							</a>
						</li> -->

						<li class="p-b-10">
							<a href="faqs" class="stext-107 cl7 hov-cl1 trans-04">
								FAQs
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						GET IN TOUCH
					</h4>

					<p class="stext-107 cl7 size-201">
						Any questions? Let us know in company at Surbhi Complex, 2nd and 3rd floor, Chimanlal Girdharlal Rd, Opposite Municipal Market, Vasant Vihar, Navrangpura, Ahmedabad, Gujarat 380009 or call us on (+91) 63596 60757
					</p>

	<!-- 				<div class="p-t-27">
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-pinterest-p"></i>
						</a>
					</div> -->
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Stay Connected
					</h4>

					<form>
						<div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
							<div class="focus-input1 trans-04"></div>
						</div>

						<div class="p-t-18">
							<button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
								Subscribe
							</button>
						</div>
					</form>
				</div>
			</div>

			<div class="p-t-40">
				<div class="flex-c-m flex-w p-b-18">
					<a href="#" class="m-all-1">
						<img src="ashion/images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="ashion/images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="ashion/images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="ashion/images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="ashion/images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div>

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>



	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<script type="text/javascript" src="assets2/js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="assets2/js/bootstrap.js"></script>
	<script type="text/javascript" src="assets2/js/custom.js"></script>
<!--===============================================================================================-->	
	<script src="ashion/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/bootstrap/js/popper.js"></script>
	<script src="ashion/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="ashion/vendor/daterangepicker/moment.min.js"></script>
	<script src="ashion/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/slick/slick.min.js"></script>
	<script src="ashion/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="ashion/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="ashion/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="ashion/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			//var productId =  $(this).parent().parent().find('.myProduct').attr("")
			$(this).on('click', function(){
				swal(nameProduct, "is Added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
			//	$(this).off('click');
			
				 $.ajax({
				        url: $(this).attr('href'),
				        success: function(response) {
				        	setTimeout(function(){
				        		window.location.reload();
				        	},3000);
				        }
				    });
					   
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

		
			
			$(this).on('click', function(){
 				swal(nameProduct, "is added to Wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				//$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="ashion/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="ashion/js/main.js"></script>

</body>
</html>
