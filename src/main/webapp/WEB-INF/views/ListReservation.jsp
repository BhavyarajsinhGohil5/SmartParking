<%----- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation</title>
</head>
<body>
<h1>Reservation</h1>
<table border="1">
    <tr>
        <th>Reservation ID</th>
        <th>User ID</th>
        <th>Parking ID</th>
     	<th>Vehicle ID</th>
     	<th>Date</th>
        <th>StartTime</th>
        <th>EndTime</th>
        <th>PaymentStatus</th>
        <th>AmountPaid</th>
        <th>SecurityAmountPaid</th>
    </tr>
    <c:forEach  items="${reservationList}" var="r">
        <tr>
            <td>${r.reservationId}</td>
            <td>${r.userId}</td>    
            <td>${r.parkingId}</td>
            <td>${r.vehicleId}</td>
            <td>${r.date}</td>
            <td>${r.startTime}</td>
            <td>${r.endTime}</td>
            <td>${r.paymentStatus}</td>
            <td>${r.amountPaid}</td>
            <td>${r.securityAmountPaid}</td>
            
              <td> <div class="d-flex gap-1">
                                <a href="viewreservation?reservationId=${r.reservationId}" class="btn btn-info btn-sm"><i class="ri-eye-line"></i> View</a> 
                                <a href="deletereservation?reservationId=${r.reservationId}" class="btn btn-danger btn-sm"><i class="bx bx-trash"></i> Delete</a>
                                <a href="editreservation?reservationId=${r.reservationId}" class="btn btn-warning btn-sm"><i class="ri-pencil-line"></i> Edit</a>
                            </div></td>
            
        </tr>
    </c:forEach>
</table>
</body>
</html>
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin | List Reservation</title>


<jsp:include page="AdminCss.jsp"></jsp:include>

<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
  </head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	
	
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>List Reservation</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item active">List Reservation</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row" style="min-height: 500px">

        <!-- Left side columns -->
        <div class="col-lg-14">
          <div class="row">

            <!-- Sales Card -->
            
            <!-- Revenue Card -->
            <!-- End Revenue Card -->

            <!-- Customers Card -->
           <!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-14">
              <div class="card">

              

                <div class="card-body">
                  <h5 class="card-title">Reservations <span>/All</span></h5>
  <div class="table-responsive">
<table class="table datatable datatable-table table-hover" id="myReservationTable">
                <thead class="table-dark">
                    <tr>              
						 <th>Reservation ID</th>
        				<!--<th>User ID</th>
        				<th>Parking ID</th>
     					<th>Vehicle ID</th> -->
     					<th>Date</th>
        				<th>Start Time</th>
        				<th>End Time</th>
        				<th>Payment Status</th>
        				<th>Amount Paid</th>
        				<th>Security AmountPaid</th>
        				<th>Vehicle Reg No</th>
        				<th>Vehicle Type</th>
        				<th>First Name</th>
						<!-- <th>Last Name</th> -->
                        <th>Title</th>
                        <th>Address</th>
						<th>Latitude</th>
                        <th>Longitude</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${allReservation}" var="r">
                        <tr>
                         	<td>${r[0]}</td><!--  - Reservation Id -->
           			<%-- 	<td>${r[8]}</td> - User Id   
            				<td>${r[4]}</td> - Parking Id
            				<td>${r[9]}</td> - Vehicle Id    --%>
            				<td>${r[1]}</td> <%--- Date --%>
            				<td>${r[2]}</td> <%--- StartTime--%>
            				<td>${r[3]}</td> <%--- EndTime--%>
            				<td>${r[4]}</td> <%--- PaymentStatus--%>
            				<td>${r[5]}</td> <%--- AmountPaid--%>
            				<td>${r[6]}</td> <%--- SecurityAmountPaid--%>
            				<td>${r[7]}</td> <%--- VehicleRegNo--%>
            				<td>${r[8]}</td> <%--- VehicleType--%>
            				<td>${r[9]} ${r[10]}</td> <%--- FirstName--%>
            				<%--- <td>${r[10]}</td> LastName--%>
            				<td>${r[11]}</td> <%--- Title--%>
            				<td>${r[12]}</td> <%--- Address--%>
            				<td>${r[13]}</td> <%--- Latitude--%>
            				<td>${r[14]}</td> <%--- Longitude--%>
                        	<td> <div class="d-flex gap-1">
                                <a href="viewreservation?reservationId=${r[0]}" class="btn btn-info btn-sm"><i class="ri-eye-line"></i> View</a> 
                                <a href="deletereservation?reservationId=${r[0]}" class="btn btn-danger btn-sm"><i class="bx bx-trash"></i> Delete</a>
                                <a href="editreservation?reservationId=${r[0]}" class="btn btn-warning btn-sm"><i class="ri-pencil-line"></i> Edit</a>
                            </div></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            </div>
 
                </div>

              </div>
            </div><!-- End Reports -->
          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <!-- End Right side columns -->

      </div>
    </section>

  </main>  
  <!-- End #main -->
  
  
  
  <jsp:include page="AdminFooter.jsp"></jsp:include>
  
  
  <jsp:include page="AdminJs.jsp"></jsp:include>
  
  	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
  
 
 

	<script type="text/javascript">

	$( document ).ready(function() {
		let table = new DataTable('#myReservationTable',{
			 
		});
	});
	</script>
  
</body>
</html>  
