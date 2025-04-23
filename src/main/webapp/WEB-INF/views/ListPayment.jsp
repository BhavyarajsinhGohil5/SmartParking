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

  <title>Admin | List Payment</title>


<jsp:include page="AdminCss.jsp"></jsp:include>

<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
  </head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	
	
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>List Payment</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item active">List Payment</li>
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
                  <h5 class="card-title">Payments <span>/All</span></h5>
  <div class="table-responsive">
<table class="table datatable datatable-table table-hover" id="myPaymentTable">
                <thead class="table-dark">
                    <tr>              
						 <th>Payment ID</th>
        				<th>Amount</th>
        				<th>Authorization Code</th>
     					<th>Payment Date</th>
     					<th>Transcation Reference ID</th>
        				<th>User Id</th>
        				<th>User Name</th>
        				<th>Vehicle Registration Number </th>
        			
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${allPayment}" var="pay">
                        <tr>
                         	<td>${pay[0]}</td><!--  - Payment ID -->
           			 		<td>${pay[1]}</td><%-- -Amount   --%>
            				<td>${pay[2]}</td> <!-- - Authorization Code -->
            				<td>${pay[3]}</td> <!-- -Payment Date -->    
            				<td>${pay[4]}</td> <%--- Transcation Reference ID --%>
            				<td>${pay[5]}</td> <%--- User Id--%>
            				<td>${pay[6]} ${pay[7]}</td> <%--- User Name--%>
            				<td>${pay[8]}</td> <%--- Vehicle Registration Number--%>
            			
                        	<td> <div class="d-flex gap-1">
                                <a href="viewpayment?paymentId=${p[0]}" class="btn btn-info btn-sm"><i class="ri-eye-line"></i> View</a> 
                                <a href="deletepayment?paymentId=${p[0]}" class="btn btn-danger btn-sm"><i class="bx bx-trash"></i> Delete</a>
                                <%-- <a href="editreservation?reservationId=${r[0]}" class="btn btn-warning btn-sm"><i class="ri-pencil-line"></i> Edit</a> --%>
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
		let table = new DataTable('#myPaymentTable',{
			 
		});
	});
	</script>
  
</body>
</html>  
