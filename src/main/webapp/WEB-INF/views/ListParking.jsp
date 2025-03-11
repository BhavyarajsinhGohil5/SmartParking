<%----<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Parking</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
          rel="stylesheet" 
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
          crossorigin="anonymous">
    <style>
        .table-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh; /* Full viewport height */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center mt-4">Parking List</h2>
        <div class="table-container">
            <table class="table table-hover table-bordered mx-auto">
                <thead class="table-dark">
                    <tr>
                        <th>Title</th>
                        <th>Address</th>
                        <th>Total Capacity (2W)</th>
                        <th>Total Capacity (4W)</th>
                        <th>Hourly Charge (2W)</th>
                        <th>Hourly Charge (4W)</th>
                        <th>Parking Type</th>
                        <th>Latitude</th>
                        <th>Longitude</th>
                        <th>Action</th> --%>
            <%----        </tr>
                </thead>
                <tbody>
                    <c:forEach items="${parkingList}" var="p">
                        <tr>
                            <td>${p.title}</td>
                            <td>${p.address}</td>
                            <td>${p.totalCapacity2wheeler}</td>
                            <td>${p.totalCapacity4wheeler}</td>
                            <td>${p.hourlyCharge2wheeler}</td>
                            <td>${p.hourlyCharge4wheeler}</td>
                            <td>${p.parkingType}</td>
                            <td>${p.latitude}</td>
                            <td>${p.longitude}</td>
                            <td>
                                <a href="viewparking?parkingId=${p.parkingId}" class="btn btn-info btn-sm">View</a>
                                <a href="deleteparking?parkingId=${p.parkingId}" class="btn btn-danger btn-sm">Delete</a>
                                <a href="editparking?parkingId=${p.parkingId}" class="btn btn-warning btn-sm">Edit</a>
                            </td> 
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>--%>






<%----- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Vehicle</title>
</head>
<body>
<h2>List Vehicle</h2>

<table border="1">
<tr>
	<th>VehicleRegNo</th>
	<th>VehicleType</th>

</tr>

	<c:forEach items="${vehicleList}" var="v">
	<tr>
		<td>${v.vehicleRegNo}</td> 
	 	<td>${v.vehicleType}</td>  

	</tr>
	
	</c:forEach>
</table>
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin | List Parking</title>


<jsp:include page="AdminCss.jsp"></jsp:include>

<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
  </head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	
	
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>List Parking</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item active">List Parking</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row" style="min-height: 500px";>

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
                  <h5 class="card-title">Parkings <span>/All</span></h5>
  <div class="table-responsive">
<table class="table datatable datatable-table table-hover" id="myParkingTable">
                <thead class="table-dark">
                    <tr>
                    	<th>Title</th>
                        <th>Address</th>
                        <th>Total Capacity (2W)</th>
                        <th>Total Capacity (4W)</th>
                        <th>Hourly Charge (2W)</th>
                        <th>Hourly Charge (4W)</th>
                        <th>Parking Type</th>
                        <th>Latitude</th>
                        <th>Longitude</th>
                        <th>Location Name</th>
                        <th>Owner ID</th>
                        <%----<th>Action</th> --%>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${parkingList}" var="p">
                        <tr>   
	 						<td>${p.title}</td>
                            <td>${p.address}</td>
                            <td>${p.totalCapacity2wheeler}</td>
                            <td>${p.totalCapacity4wheeler}</td>
                            <td>${p.hourlyCharge2wheeler}</td>
                            <td>${p.hourlyCharge4wheeler}</td>
                            <td>${p.parkingType}</td>
                            <td>${p.latitude}</td>
                            <td>${p.longitude}</td>
                            <td>${p.locationName}</td>
	 						<td>${p.userId}</td>

                           <%----  <td> <div class="d-flex gap-1">
                                <a href="viewparking?parkingId=${p.parkingId}" class="btn btn-info btn-sm"><i class="ri-eye-line"></i> View</a> 
                                <a href="deleteparking?parkingId=${p.parkingId}" class="btn btn-danger btn-sm"><i class="bx bx-trash"></i> Delete</a>
                                <a href="editparking?parkingId=${p.parkingId}" class="btn btn-warning btn-sm"><i class="ri-pencil-line"></i> Edit</a>
                            </div></td>--%>
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
		let table = new DataTable('#myParkingTable',{
			 
		});
	});
	</script>
  
</body>
</html>







