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
<title>Admin | View Parking</title>
<jsp:include page="AdminCss.jsp"></jsp:include>


  </head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	
	
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>View Parking Details</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">List Parking</li>
          <li class="breadcrumb-item active">View Parking</li>
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

              
<%-- 
                <div class="card-body">
                  <h5 class="card-title">Parking <span>/User</span></h5>
  <div class="table-responsive">
	<table class="table datatable datatable-table table-hover" id="myViewParkingTable" border="1">
		<thead class="table-dark"><tr>

			-- <th>ParkingCode</th>
			<th>Parking ID</th>
            <th>Title</th>
            <th>Address</th>
            <th>Location Name</th>
            <th>Owner ID</th>
            <th>Total Capacity (2W)</th>
            <th>Total Capacity (4W)</th>
            <th>Hourly Charge (2W)</th>
            <th>Hourly Charge (4W)</th>
            <th>Parking Type</th>
            <th>Latitude</th>
            <th>Longitude</th>
		</tr></thead>
		<tbody>
		<c:forEach items="${parking}" var="p">
			<tr>
							<td>${p[0]}</td>
	 						<td>${p[1]}</td>
                            <td>${p[2]}</td>
                            <td>${p[3]}</td>
                            <td>${p[4]}</td>
                            <td>${p[5]}</td>
                            <td>${p[6]}</td>
                            <td>${p[7]}</td>
                            <td>${p[8]}</td>
                            <td>${p[9]}</td>
                            <td>${p[10]}</td>
                            <td>${p[11]}</td>
			</tr>
		</c:forEach>

</tbody>
	</table>
	</div>
 
                </div>
    --%>

    <div class="card-body">
  <h5 class="card-title">Parking <span>Information</span></h5>

  <c:forEach items="${parking}" var="p">
    <div class="card mb-4 p-4 shadow-sm border rounded-3">
      <div class="row g-4">
      
        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Parking ID</label>
            <input type="text" class="form-control" value="${p[0]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Title</label>
            <input type="text" class="form-control" value="${p[1]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Address</label>
            <input type="text" class="form-control" value="${p[2]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Location Name</label>
            <input type="text" class="form-control" value="${p[3]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Owner ID</label>
            <input type="text" class="form-control" value="${p[4]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Total Capacity (2W)</label>
            <input type="text" class="form-control" value="${p[5]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Total Capacity (4W)</label>
            <input type="text" class="form-control" value="${p[6]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Hourly Charge (2W)</label>
            <input type="text" class="form-control" value="${p[7]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Hourly Charge (4W)</label>
            <input type="text" class="form-control" value="${p[8]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Parking Type</label>
            <input type="text" class="form-control" value="${p[9]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Latitude</label>
            <input type="text" class="form-control" value="${p[10]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Longitude</label>
            <input type="text" class="form-control" value="${p[11]}" readonly>
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