<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Bookings</title>
</head>
<body>
<c:forEach items="${reservation}" var="r">
Title : ${r[12] }<br>
Address :  ${r[13] }<br>
Date : ${r[2]}<br>
StartTime :  ${r.startTime }<br>
EndTime :  ${r.endTime }<br>
PaymentStatus :  ${reservation.paymentStatus }<br>
AmountPaid :  ${r.amountPaid }<br>
SecurityAmountPaid :  ${r.securityAmountPaid }<br>
</c:forEach>
<table border="1">
                
                    <tr>              
					-- <th>ParkingCode</th>
			<th>Reservation ID</th>
			<th>User ID</th>
        	<th>Parking ID</th>
     		<th>Vehicle ID</th>
            <th>Date</th>
            <th>Start Time</th>
            <th>End Time</th>
            <!-- <th>Owner ID</th> -->
            <th>Payment Status</th>
            <th>Amount Paid</th>
            <th>Security Amount Paid</th>
            <th>VehicleRegNo</th>
        	<th>VehicleType</th>
        	<th>FirstName</th>
			<th>LastName</th>
			<th>Latitude</th>
            <th>Longitude</th>
            <th>Title</th>
            <th>Address</th>
                    </tr>
               
                <tbody>
                    <c:forEach items="${reservation}" var="r">
                        <tr>
                         								<td>${r[0]}</td>
	 						<td>${r[8]}</td>
                            <td>${r[4]}</td>
                            <td>${r[9]}</td>
                            <td>${r[2]}</td>
                            <td>${r[7]}</td>
                            <td>${r[3]}</td>
                            <td>${p[7]}</td>
                            <td>${r[5]}</td>
                            <td>${r[1]}</td>
                            <td>${r[6]}</td>
                            <td>${r[17]}</td>
                            <td>${r[18]}</td>
                            <td>${r[10]}</td>
                            <td>${r[11]}</td>
                            <td>${r[14]}</td>
                            <td>${r[15]}</td>
                            <td>${r[12]}</td>
                            <td>${r[13]}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            
	<!-- <script type="text/javascript">

	$( document ).ready(function() {
		let table = new DataTable('#myReservationTable',{
			 
		});
	});
	</script> -->
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>My Bookings</title>
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
	<link rel="stylesheet" type="text/css" href="ashion/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="ashion/css/util.css">
	<link rel="stylesheet" type="text/css" href="ashion/css/main.css">
<!--===============================================================================================-->

</head>
<body>
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




<%-- <section class="bg0 p-t-75 p-b-120">
		<div class="container">
			<div class="col p-b-148">
				<div class="col-md-7 col-lg-8">
					<div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Our Story
						</h3>

						<p class="stext-113 cl6 p-b-26">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat consequat enim, non auctor massa ultrices non. Morbi sed odio massa. Quisque at vehicula tellus, sed tincidunt augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas varius egestas diam, eu sodales metus scelerisque congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas gravida justo eu arcu egestas convallis. Nullam eu erat bibendum, tempus ipsum eget, dictum enim. Donec non neque ut enim dapibus tincidunt vitae nec augue. Suspendisse potenti. Proin ut est diam. Donec condimentum euismod tortor, eget facilisis diam faucibus et. Morbi a tempor elit.
						</p>

						<p class="stext-113 cl6 p-b-26">
							Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna. Aliquam aliquam imperdiet sodales. Ut fringilla turpis in vehicula vehicula. Pellentesque congue ac orci ut gravida. Aliquam erat volutpat. Donec iaculis lectus a arcu facilisis, eu sodales lectus sagittis. Etiam pellentesque, magna vel dictum rutrum, neque justo eleifend elit, vel tincidunt erat arcu ut sem. Sed rutrum, turpis ut commodo efficitur, quam velit convallis ipsum, et maximus enim ligula ac ligula. 
						</p>

						<p class="stext-113 cl6 p-b-26">
							Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
						</p>

<h3 class="mtext-111 cl2 p-b-16">Your Bookings</h3>

<c:forEach items="${reservation}" var="r">
    <b>Reservation ID:</b> ${r[0]}<br>
    <b>Date:</b> ${r[1]}<br>
    <b>Start Time:</b> ${r[2]}<br>
    <b>End Time:</b> ${r[3]}<br>
    <b>Payment Status:</b> ${r[4]}<br>
    <b>Amount Paid:</b> ${r[5]}<br>
    <b>Security Amount Paid:</b> ${r[6]}<br>
    <b>Vehicle Reg No:</b> ${r[7]}<br>
    <b>Vehicle Type:</b> ${r[8]}<br>
    <b>User Name:</b> ${r[9]} ${r[10]}<br>
    <b>Parking Title:</b> ${r[11]}<br>
    <b>Parking Address:</b> ${r[12]}<br>
    <b>Latitude:</b> ${r[13]}<br>
    <b>Longitude:</b> ${r[14]}<br>
    <b>Location Name:</b> ${r[15]}<br>
    <hr>
</c:forEach>

					</div>
				</div>
				
			</div>
			
			
		</div>
	</section>

 --%>
<section class="bg0 p-t-140 p-b-120">
    <div class="container">
        <div class="col p-b-148">
            <div class="col-md-7 col-lg-8">
                <div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
                    <h3 class="mtext-111 cl2 p-b-16">
                        Our Story
                    </h3>

                    <p class="stext-113 cl6 p-b-26">
                        Parking in the city used to be a hassle—circling around, searching for an empty spot, and dealing with expensive rates. That’s why we built Smart Parking—a simple and smart way to book your parking space in advance and save time, fuel, and stress.
                    </p>

                    <p class="stext-113 cl6 p-b-26">
                         Whether you're heading to work, shopping, or a night out, our platform lets you reserve a spot with just a few clicks. Choose your location, set your time, and get instant confirmation. No more last-minute surprises or wasted minutes.
                    </p>

                    <p class="stext-113 cl6 p-b-26">
                        Any questions? Let us know in office at Surbhi Complex, 2nd and 3rd floor, Chimanlal Girdharlal Rd, Opposite Municipal Market, Vasant Vihar, Navrangpura, Ahmedabad, Gujarat 380009 or call us on (+91) 63596 60757
                    </p>

                    <h3 class="mtext-111 cl2 p-b-16">Your Bookings</h3>

                    <div class="table-responsive">
                        <table class="table table-bordered table-striped stext-90 ">
                            <thead class="bg-light">
                                <tr>
                                    <th>Date</th>
                                    <th>Start Time</th>
                                    <th>End Time</th>
                                    <th>Payment Status</th>
                                    <th>Amount Paid</th>
                                    <th>Security Amount</th>
                                    <th>Vehicle Registration No</th>
                                    <th>Vehicle Type</th>
                                    <th>Parking Title</th>
                                    <th>Address</th>
                                    <th>Latitude</th>
                                    <th>Longitude</th>
                                    <th>Location Name</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${reservation}" var="r">
                                    <tr>
                                        <td>${r[1]}</td>
                                        <td>${r[2]}</td>
                                        <td>${r[3]}</td>
                                        <td>${r[4]}</td>
                                        <td>${r[5]}</td>
                                        <td>${r[6]}</td>
                                        <td>${r[7]}</td>
                                        <td>${r[8]}</td>
                                        <td>${r[11]}</td>
                                        <td>${r[12]}</td>
                                        <td>${r[13]}</td>
                                        <td>${r[14]}</td>
                                        <td>${r[15]}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
<%-- <div class="table-responsive">
    <table class="table table-bordered table-striped stext-90">
        <thead class="bg-light text-center">
            <tr>
                <th style="min-width: 120px;">Date</th>
                <th style="min-width: 90px;">Start Time</th>
                <th style="min-width: 90px;">End Time</th>
                <th style="min-width: 120px;">Payment Status</th>
                <th style="min-width: 100px;">Amount Paid</th>
                <th style="min-width: 100px;">Security Amount</th>
                <th style="min-width: 150px;">Vehicle Reg. No</th>
                <th style="min-width: 120px;">Vehicle Type</th>
                <th style="min-width: 150px;">Parking Title</th>
                <th style="min-width: 150px;">Address</th>
                <th style="min-width: 100px;">Latitude</th>
                <th style="min-width: 100px;">Longitude</th>
                <th style="min-width: 150px;">Location Name</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${reservation}" var="r">
                <tr>
                    <td class="text-center">${r[1]}</td>
                    <td class="text-center">${r[2]}</td>
                    <td class="text-center">${r[3]}</td>
                    <td class="text-center">${r[4]}</td>
                    <td class="text-end">${r[5]}</td>
                    <td class="text-end">${r[6]}</td>
                    <td class="text-center">${r[7]}</td>
                    <td class="text-center">${r[8]}</td>
                    <td>${r[11]}</td>
                    <td style="white-space: normal;">${r[12]}</td>
                    <td class="text-center">${r[13]}</td>
                    <td class="text-center">${r[14]}</td>
                    <td style="white-space: normal;">${r[15]}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div> --%>

                </div>
            </div>
        </div>
    </div>
</section>

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
	<script src="ashion/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="ashion/js/map-custom.js"></script>
<!--===============================================================================================-->
	<script src="ashion/js/main.js"></script>

</body>
</html>
