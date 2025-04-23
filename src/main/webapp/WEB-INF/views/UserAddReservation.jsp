<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>Add Reservation</title>
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
<!--===============================================================================================-->
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


     <!-- <h2>Add Reservation</h2> -->
  <%--    
     <form action="saveuserreservation" method="post">
     
     Date: <input type="date" name="date" required/><br><br>
     Start Time: <input type="time" name="startTime" required/><br>
     End Time: <input type="time" name="endTime" required/><br>
     <input type="hidden" name="userId"  id="userId" value="${user.userId}"/>
      Payment Status:<select name="paymentStatus">
            <option value="Completed">Completed</option>
            <option value="Pending">Pending</option>
            <option value="Failed">Failed</option>
        </select><br><br>
         <!-- Hourly Charge Display -->
        <label>Hourly Charge:</label>
        <input type="text" id="hourlyChargeDisplay" readonly 
               value="${defaultHourlyCharge}" /><br><br>

        <!-- Security Amount Display -->
        <label>Security Deposit:</label>
        <input type="text" id="securityAmountDisplay" readonly 
               value="<c:choose>
                        <c:when test='${vehicle.vehicleType == "2Wheeler"}'>100</c:when>
                        <c:when test='${vehicle.vehicleType == "4Wheeler"}'>200</c:when>
                        <c:when test='${vehicle.vehicleType == "SUV"}'>200</c:when>
                        <c:otherwise>0</c:otherwise>
                     </c:choose>" /><br><br>

     <!--    <!-- Estimated Amount 
        <label>Estimated Amount:</label>
        <input type="text" id="estimatedAmountDisplay" readonly /><br><br>
         -->
        
     Amount Paid:<input type="number" id="amountPaid" name="amountPaid" step="0.01"  required/><br><br>
     Security Amount Paid:<input type="number" id="securityAmountPaid" name="securityAmountPaid" step="0.01"  required/><br><br> 
      
     <input type="hidden" name="userId"  id="userId" value="${user.userId}"/>
     <input type="hidden" name="vehicleId"  id="vehicleId" value="${vehicle.vehicleId}"/> 
     <label for="userId" class="form-label">User:</label>---<input type="number" id="userId" name="userId" placeholder="Enter User ID" required>
     <select name="userId" id="userId" class="form-control" required>
                                <option value="">Select User</option>
                                <c:forEach items="${allUser}" var="u">
                                  <option value="${u.userId}">${u.firstName}</option>
                                </c:forEach>
                              </select>
     
      <label for="vehicleId" class="form-label">Vehicle:</label><!-- ---<input type="number" id="userId" name="userId" placeholder="Enter User ID" required> -->
     <select name="vehicleId" id="vehicleId" class="form-control" required>
                                <option value="">Select Vehicle</option>
                                <c:forEach items="${allVehicle}" var="v">
                                  <option value="${v.vehicleId}">${v.vehicleRegNo} (ID: ${v.vehicleId})</option>
                                </c:forEach>
                              </select> 
                              <c:if test="${not empty vehicle}">
        <input type="hidden" name="vehicleId" value="${vehicle.vehicleId}" />
    </c:if>
    
    
       <!-- Vehicle selection -->
    <label for="vehicleId">Select Your Vehicle:</label>
    <select name="vehicleId" id="vehicleId" required>
        <option value="">-- Select Vehicle --</option>
        <c:forEach items="${userVehicles}" var="v">
            <option value="${v.vehicleId}" ${v.vehicleId == vehicle.vehicleId ? "selected" : ""}>${v.vehicleRegNo} (${v.vehicleType})</option>
        </c:forEach>
    </select><br><br>
                             
    VehicleRegNo : <input type="text" name="vehicleRegNo" value="${vehicle.vehicleRegNo}" maxlength="13" placeholder="MH-12-AB-1234" required oninput="formatVehicleReg(this)"/><br> <br>                    
    
      <label for="parkingId" class="form-label">Parking:</label><!-- ---<input type="number" id="userId" name="userId" placeholder="Enter User ID" required> -->
     <select name="parkingId" id="parkingId" class="form-control" required>
                                <option value="">Select Parking</option>
                                <c:forEach items="${allParking}" var="p">
                                  <option value="${p.parkingId}">${p.address} (${p.title},${p.locationId})</option>
                                </c:forEach>
                              </select>
      
     
     <input type="submit" value="Save Reservation" />
     </form> 
      --%>
     <div class="container mt-5 mb-5 p-t-140">
    <div class="card shadow p-4">
        <h2 class="mb-4 text-center">Fill Reservation Details</h2>

        <form action="saveuserreservation" method="post">
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="date" class="form-label">Date</label>
                    <input type="date" name="date" class="form-control" required/>
                </div>
                <div class="col-md-3">
                    <label for="startTime" class="form-label">Start Time</label>
                    <input type="time" name="startTime" id="startTime" class="form-control" required/>
                </div>
                <div class="col-md-3">
                    <label for="endTime" class="form-label">End Time</label>
                    <input type="time" name="endTime" id="endTime" class="form-control" required/>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="vehicleId" class="form-label">Select Your Vehicle</label>
                    <select name="vehicleId" id="vehicleId" class="form-control" required>
                        <option value="">-- Select Vehicle --</option>
                        <c:forEach items="${userVehicles}" var="v">
                            <option value="${v.vehicleId}" ${v.vehicleId == vehicle.vehicleId ? "selected" : ""}>
                                ${v.vehicleRegNo} (${v.vehicleType})
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-md-6">
                    <label for="parkingId" class="form-label">Select Parking</label>
                    <select name="parkingId" id="parkingId" class="form-control" required>
                        <option value="">Select Parking</option>
                        <c:forEach items="${allParking}" var="p">
                            <option value="${p.parkingId}">${p.address} (${p.title}, ${p.locationId})</option>
                        </c:forEach>
                    </select>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-4">
                    <label for="amountPaid" class="form-label">Estimated Amount</label>
                    <input type="number" id="amountPaid" name="amountPaid" class="form-control" step="0.01" required/>
                </div>
                <div class="col-md-4">
                    <label for="securityAmountPaid" class="form-label">Security Amount Paid</label>
                    <input type="number" id="securityAmountPaid" name="securityAmountPaid" class="form-control" step="0.01" required/>
                </div>
                <div class="col-md-4">
                    <label for="paymentStatus" class="form-label">Payment Status</label>
                    <select name="paymentStatus" class="form-control">
                    <option value="">Select Payment Status</option>
                        <!-- <option value="Completed">Completed</option> -->
                        <option value="Pending">Pending</option>
                        <!-- <option value="Failed">Failed</option> -->
                    </select>
                </div>
            </div>

            <input type="hidden" name="userId" id="userId" value="${user.userId}"/>
            <input type="hidden" name="vehicleId" id="vehicleIdHidden" value="${vehicle.vehicleId}"/>

            <div class="text-center d-flex justify-content-center gap-3 mt-4" style="display: inline-flex; gap: 10px;">
    <input type="submit" value="Save Reservation" class="btn btn-primary px-4"/><br>
    <a href="checkout" class="btn btn-secondary px-4">Next</a>
</div>
        </form>
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
     
     
     
<!-- Load hourly charges and vehicle types into JS -->
<script>
    var parkingCharges = {
        <c:forEach var="p" items="${allParking}" varStatus="loop">
            "${p.parkingId}": {
                "2Wheeler": ${p.hourlyCharge2wheeler},
                "4Wheeler": ${p.hourlyCharge4wheeler},
                "SUV": ${p.hourlyCharge4wheeler}
            }<c:if test="${!loop.last}">,</c:if>
        </c:forEach>
    };

    var vehicleTypes = {
        <c:forEach var="v" items="${userVehicles}" varStatus="loop">
            "${v.vehicleId}": "${v.vehicleType}"<c:if test="${!loop.last}">,</c:if>
        </c:forEach>
    };

    function calculateAmount() {
        const vehicleId = document.getElementById("vehicleId").value;
        const parkingId = document.getElementById("parkingId").value;
        const startTime = document.getElementById("startTime").value;
        const endTime = document.getElementById("endTime").value;

        if (vehicleId && parkingId && startTime && endTime) {
            const vehicleType = vehicleTypes[vehicleId];
            const charges = parkingCharges[parkingId];

            if (vehicleType && charges && charges[vehicleType]) {
                const rate = charges[vehicleType];

                const start = new Date("1970-01-01T" + startTime + ":00");
                const end = new Date("1970-01-01T" + endTime + ":00");

                let hours = (end - start) / (1000 * 60 * 60); // milliseconds to hours

                if (hours < 0) hours += 24; // handle overnight reservations

                const total = rate * hours;
                document.getElementsByName("amountPaid")[0].value = total.toFixed(2);
            } else {
                document.getElementsByName("amountPaid")[0].value = '';
            }
        }
    }

    // Event listeners
    document.getElementById("vehicleId").addEventListener("change", calculateAmount);
    document.getElementById("parkingId").addEventListener("change", calculateAmount);
    document.getElementById("startTime").addEventListener("change", calculateAmount);
    document.getElementById("endTime").addEventListener("change", calculateAmount);
</script>
    <!-- JS for Dynamic Calculation -->
       <!-- JavaScript to calculate estimated amount -->
   <!--  <script>
        function calculateEstimate() {
            const start = document.querySelector('[name="startTime"]').value;
            const end = document.querySelector('[name="endTime"]').value;
            const rate = parseFloat(document.getElementById('hourlyChargeDisplay').value);

            if (start && end && !isNaN(rate)) {
                const [sh, sm] = start.split(':').map(Number);
                const [eh, em] = end.split(':').map(Number);

                let hours = eh - sh + (em - sm) / 60;
                if (hours <= 0) hours += 24; // handle overnight case

                const estimated = (rate * hours).toFixed(2);
                document.getElementById('estimatedAmountDisplay').value = estimated;
            }
        }

        document.querySelector('[name="startTime"]').addEventListener('change', calculateEstimate);
        document.querySelector('[name="endTime"]').addEventListener('change', calculateEstimate);
    </script> -->
      	
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