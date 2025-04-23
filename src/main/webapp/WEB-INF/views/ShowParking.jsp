<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>Show Parking</title>
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


<%-- 
<jsp:include page="UserViewParking.jsp"></jsp:include>

 --%>
<%-- 
Floor : ${parkingslot.floor }<br>
MinParkingMinutes :  ${parkingslot.minParkingMinutes }<br>
SuvSupported: ${parkingslot.suvSupported }<br>
 --%>

<%--  
<jsp:include page="UserAddVehicle.jsp"></jsp:include>--%>
<%-- 
<h2>Add Vehicle Details</h2>
<form action="saveuservehicle" method="post">

 	VehicleRegNo: <input type="text" name="vehicleRegNo" id="vehicleRegNo" maxlength="13" placeholder="MH-12-AB-1234" required oninput="formatVehicleReg(this)"/> <br><br>
     VehicleType:<br><br>
     4 Wheeler<input type="radio" name="vehicleType" value="4 Wheeler"/><br><br>
     2 Wheeler<input type="radio" name="vehicleType" value="2 Wheeler" /><br><br>
     SUV<input type="radio" name="vehicleType" value="SUV" /><br><br>
 <input type="hidden" name="userId"  id="userId" value="${user.userId}"/>
  <input type="submit" value="Save Vehicle" />
 </form>
  --%>
 
<%-- <jsp:include page="UserAddReservation.jsp"></jsp:include>  --%>
 <%-- <h2>Add Reservation Details</h2>
 <form action="saveuserreservation" method="post">


     Date: <input type="date" name="date" required/><br><br>
     Start Time: <input type="time" name="startTime" required/><br><br>
     End Time: <input type="time" name="endTime" required/><br>
      Payment Status:<select name="paymentStatus">
            <option value="Completed">Completed</option>
            <option value="Pending">Pending</option>
            <option value="Failed">Failed</option>
        </select><br><br>
     Amount Paid:<input type="number" name="amountPaid" step="0.01" required/><br><br>
     Security Amount Paid:<input type="number" name="securityAmountPaid" step="0.01" required/><br><br> 
     
     <input type="hidden" name="vehicleId"  id="vehicleId" value="${vehicle.vehicleId}"/>
      <input type="hidden" name="parkingId"  id="parkingId" value="${parking.parkingId}"/>

  <input type="hidden" name="userId"  id="userId" value="${user.userId}"/>
 <label for="vehicleId" class="form-label">Vehicle:</label>---<input type="number" id="userId" name="userId" placeholder="Enter User ID" required>
     <select name="vehicleId" id="vehicleId" class="form-control" required>
                                <option value="">Select Vehicle</option>
                                <c:forEach items="${allVehicle}" var="v">
                                  <option value="${v.vehicleId}">${v.vehicleRegNo}</option>
                                </c:forEach>
                              </select>
     
      <label for="parkingId" class="form-label">Parking:</label>---<input type="number" id="userId" name="userId" placeholder="Enter User ID" required>
     <select name="parkingId" id="parkingId" class="form-control" required>
                                <option value="">Select Parking</option>
                                <c:forEach items="${allParking}" var="p">
                                  <option value="${p.parkingId}">${p.address}</option>
                                </c:forEach>
                              </select>
     
 
 
 
     <input type="submit" value="Save Reservation" />
</form> --%>
<%-- <h2>Add Payment Details</h2>

 AmountPaid:<input type="number" name="amountPaid" step="0.01" readonly="readonly" value="${reservation.amountPaid}" required/><br><br>
     SecurityAmountPaid:<input type="number" name="securityAmountPaid" step="0.01" readonly="readonly" value="${reservation.securityAmountPaid}" required/><br><br>
		 
AmountPaid: <input type="number" name="amountPaid" step="0.01" readonly="readonly" value="${reservation.amountPaid}" required/><br><br>
SecurityAmountPaid: <input type="number" name="securityAmountPaid" step="0.01" readonly="readonly" value="${reservation.securityAmountPaid}" required/><br><br>
	Credit Card : <input type="text" size="16" name="ccNum"/><Br><Br>  
	ExpDate : <input type="text" name="expDate" size="4"/><br><br> 
	 --%>

<div class="container p-t-50 p-b-50">

    <!-- Include User View Parking Section -->
    <jsp:include page="UserViewParking.jsp"></jsp:include>

    <h3 class="mtext-111 cl2 p-b-30 p-l-80 text-left">How to Book a Parking Slot</h3>

    <div class="row justify-content-center">
        <div class="col-md-10">

            <!-- Step 1 -->
            <div class="mb-4">
                <h5 class="font-weight-bold">Step 1: View Parking Availability</h5>
                <p>Start by browsing the available parking slots in your area. You can view detailed information like location, hourly rates, and security deposit.</p>
                <!-- Uncomment if you want to use the button -->
                <!-- <a href="viewparking" class="btn btn-info">View Parking</a> -->
            </div>

            <!-- Step 2 -->
            <div class="mb-4">
                <h5 class="font-weight-bold">Step 2: Register Your Vehicle</h5>
                <p>Before reserving a slot, you need to add your vehicle details such as number, type, and model. This helps us ensure secure entry and exit at the parking lot.</p>
                <a href="useraddvehicle" class="btn btn-primary">Add Vehicle</a>
            </div>

            <!-- Step 3 -->
            <div class="mb-4">
                <h5 class="font-weight-bold">Step 3: Reserve Your Spot</h5>
                <p>Select the vehicle, choose your desired time slot, and reserve your parking space. You will also see the estimated amount based on your time duration.</p>
                <a href="useraddreservation" class="btn btn-success">Reserve Now</a>
            </div>

            <!-- Step 4 -->
            <div class="mb-4">
                <h5 class="font-weight-bold">Step 4: Complete Payment</h5>
                <p>After confirming your reservation, proceed to checkout. Choose a payment method and complete the transaction to secure your parking.</p>
                <a href="checkout" class="btn btn-warning">Checkout</a>
            </div>

        </div>
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


 <script>
 
function formatVehicleReg(input) {
    let value = input.value.toUpperCase().replace(/[^A-Z0-9]/g, ''); // Remove unwanted characters
    let formattedValue = '';

    if (value.length > 0) formattedValue += value.substring(0, 2); // First 2 letters
    if (value.length > 2) formattedValue += '-' + value.substring(2, 4); // Next 2 digits
    if (value.length > 4) formattedValue += '-' + value.substring(4, 6); // Next 2 letters
    if (value.length > 6) formattedValue += '-' + value.substring(6, 10); // Last 4 digits

    input.value = formattedValue; 
}


</script>
</body>
</html>