<%------ 	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Vehicle</title>
</head>
<body>
<h2>View Vehicle</h2>
VehicleRegNo : ${vehicle.vehicleRegNo }<br>
VehicleType : ${vehicle.vehicleType }<br>


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
<title>Admin | View Vehicle</title>
<jsp:include page="AdminCss.jsp"></jsp:include>


  </head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	
	
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>View Vehicle Details</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">List Vehicle</li>
          <li class="breadcrumb-item active">View Vehicle</li>
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
  <h5 class="card-title">Vehicle <span>Information</span></h5>
              
<%-- 	<table border="1">
		<tr>

			-- <th>ParkingCode</th>
			<th>VehicleRegNo</th>
			<th>VehicleType</th>
			<th>FirstName</th>
			<th>LastName</th>
		</tr>
		<c:forEach items="${vehicle}" var="v">
			<tr>
				<td>${v[1]}</td>
				<td>${v[2]}</td>
				<td>${v[4]}</td>
				<td>${v[5]}</td>
				-- <td>${v[6]}</td>

			</tr>
		</c:forEach>


	</table> --%>
<c:forEach items="${vehicle}" var="v">
    <div class="card mb-4 p-4 shadow-sm border rounded-3">
      <div class="row g-4">

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Vehicle Registration Number</label>
            <input type="text" class="form-control" value="${v[1]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Vehicle Type</label>
            <input type="text" class="form-control" value="${v[2]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">User Name</label>
            <input type="text" class="form-control" value="${v[4]} ${v[5]}" readonly>
          </div>
        </div>

        </div>
        </div>
        </c:forEach></div>
    
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