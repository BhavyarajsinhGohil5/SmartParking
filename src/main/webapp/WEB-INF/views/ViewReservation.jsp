<%----- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Parking</title>
</head>
<body>
<h2>View Parking</h2>
Title : ${parking.title }<br>
Address :  ${parking.address }<br>
TotalCapacity(2 Wheeler) : ${parking.totalCapacity2wheeler }<br>
TotalCapacity(4 Wheeler) : ${parking.totalCapacity4wheeler }<br>
HourlyChargeTwoWheeler : ${parking.hourlyCharge2wheeler }<br>
HourlyChargeFourWheeler : ${parking.hourlyCharge4wheeler }<br>
ParkingType : ${parking.parkingType }<br>
Latitude : ${parking.latitude }<br>
Longitude : ${parking.longitude }<br>

</body>
</html>
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>View Reservation</title>
<jsp:include page="AdminCss.jsp"></jsp:include>


  </head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	
	
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>View Reservation Details</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">List Reservation</li>
          <li class="breadcrumb-item active">View Reservation</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row" style="min-height: 500px">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            
            <!-- Revenue Card -->
            <!-- End Revenue Card -->

            <!-- Customers Card -->
           <!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
              <div class="card">
 <div class="card-body">
  <h5 class="card-title">Reservation <span>Information</span></h5>
<%-- 	<table border="1">
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
		<c:forEach items="${reservation}" var="r">
			<tr>
							<td>${r[0]}</td>
	 						<td>${r[8]}</td>
                            <td>${r[4]}</td>
                            <td>${r[9]}</td>
                            <td>${r[2]}</td>date
                            <td>${r[7]}</td>Start time
                            <td>${r[3]}</td>End time
                            <td>${p[7]}</td>owner
                            <td>${r[5]}</td>Payment status
                            <td>${r[1]}</td>AmountPaid
                            <td>${r[6]}</td>SecurityAmount
                            <td>${r[17]}</td>vehicleRegNo
                            <td>${r[18]}</td>vehicle type
                            <td>${r[10]}</td>firstname
                            <td>${r[11]}</td>lastname
                            <td>${r[14]}</td>lat
                            <td>${r[15]}</td>long
                            <td>${r[12]}</td>title
                            <td>${r[13]}</td>address
			</tr>
		</c:forEach>


	</table> --%>
<c:forEach items="${reservation}" var="r">
    <div class="card mb-4 p-4 shadow-sm border rounded-3">
      <div class="row g-4">

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Date</label>
            <input type="text" class="form-control" value="${r[2]}" readonly>
          </div>
        </div>
        
         <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Start Time</label>
            <input type="text" class="form-control" value="${r[7]}" readonly>
          </div>
        </div>
        
         <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">End Time</label>
            <input type="text" class="form-control" value="${r[3]}" readonly>
          </div>
        </div>
        
         <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Owner</label>
            <input type="text" class="form-control" value="${r[7]}" readonly>
          </div>
        </div>
        
         <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Payment Status</label>
            <input type="text" class="form-control" value="${r[5]}" readonly>
          </div>
        </div>
        
         <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Amount Paid</label>
            <input type="text" class="form-control" value="${r[1]}" readonly>
          </div>
        </div>
        
        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Security Amount Paid</label>
            <input type="text" class="form-control" value="${r[6]}" readonly>
          </div>
        </div>
        
        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">VehicleRegNo</label>
            <input type="text" class="form-control" value="${r[17]}" readonly>
          </div>
        </div>
        
        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">VehicleType</label>
            <input type="text" class="form-control" value="${r[18]}" readonly>
          </div>
        </div>
        
        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">User Name</label>
            <input type="text" class="form-control" value="${r[10]} ${r[11]}" readonly>
          </div>
        </div>
        
        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Latitude</label>
            <input type="text" class="form-control" value="${r[14]}" readonly>
          </div>
        </div>
        
        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Longitude</label>
            <input type="text" class="form-control" value="${r[15]}" readonly>
          </div>
        </div>
        
        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Parking Spot</label>
            <input type="text" class="form-control" value="${r[12]}" readonly>
          </div>
        </div>
        
        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Parking Area</label>
            <input type="text" class="form-control" value="${r[13]}" readonly>
          </div>
        </div>
        </div>
        </div>
      </c:forEach>
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
  
 
 


  
</body>
</html>