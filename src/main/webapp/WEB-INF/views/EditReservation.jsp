<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Edit Reservation Details</title>


<jsp:include page="AdminCss.jsp"></jsp:include>

</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	
	
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">Reservation</li>
          <li class="breadcrumb-item active">Edit Reservation</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
	
	<section class="section">

<div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Reservation Details</h5>
     
	<form action="updatereservation" method="post">
	
<%-- 		Date : <input type="date" name="date" value="${reservation.date}" required/><br> <br> --%>
		<div class="row mb-3">
                  <label for="date" class="col-sm-3 col-form-label" >Date</label>
                  <div class="col-sm-9">
                    <input type="date" class="form-control" name="date" value="${reservation.date}" required>
                  </div>
                </div>
<%-- 		StartTime: <input type="time" name="startTime" value="${reservation.startTime}" required/><br> --%>
     	
     	<div class="row mb-3">
                  <label for="startTime" class="col-sm-3 col-form-label" >Start Time</label>
                  <div class="col-sm-9">
                    <input type="time" class="form-control" name="startTime" value="${reservation.startTime}" required>
                  </div>
                </div>
<%--      	
     	EndTime: <input type="time" name="endTime" value="${reservation.endTime}" required/><br> --%>
		  <div class="row mb-3">
                  <label for="endTime" class="col-sm-3 col-form-label" >End Time</label>
                  <div class="col-sm-9">
                    <input type="time" class="form-control" name="endTime" value="${reservation.endTime}" required>
                  </div>
                </div>
		
		
		
	<%-- 	PaymentStatus:
		 <select name="paymentStatus"  required>
            <option value="Completed" ${reservation.paymentStatus == 'Completed' ? 'selected' : ''}>Completed</option>
            <option value="Pending" ${reservation.paymentStatus == 'Pending' ? 'selected' : ''}>Pending</option>
            <option value="Failed" ${reservation.paymentStatus == 'Failed' ? 'selected' : ''}>Failed</option>
        </select><br><br>
	 --%>
	  <div class="row mb-3">
                  <label class="col-sm-5 col-form-label">Payment Status</label>
                  <div class="col-sm-7">
                    <select class="form-select" aria-label="Default select example" name="paymentStatus" required>
                      <option selected="">Select Payment Status</option>
                      <option value="Completed" ${reservation.paymentStatus == 'Completed' ? 'selected' : ''}>Completed</option>
                      <option value="Pending" ${reservation.paymentStatus == 'Pending' ? 'selected' : ''}>Pending</option>    
                      <option value="Failed" ${reservation.paymentStatus == 'Failed' ? 'selected' : ''}>Failed</option>                  
                    </select>
                  </div>
                </div>
	
	
	
	<%-- 
		 AmountPaid:<input type="number" name="amountPaid" step="0.01" value="${reservation.amountPaid}" required/><br><br> --%>
     
      <div class="row mb-3">
                  <label for="amountPaid" class="col-sm-5 col-form-label" > Amount Paid</label>
                  <div class="col-sm-7">
                    <input type="number" class="form-control" name="amountPaid" value="${reservation.amountPaid}" step="0.01" required>
                  </div>
                </div>
     
     <%-- 
     SecurityAmountPaid:<input type="number" name="securityAmountPaid" step="0.01" value="${reservation.securityAmountPaid}" required/><br><br> --%>
		 
		 <div class="row mb-3">
                  <label for="securityAmountPaid" class="col-sm-5 col-form-label" >Security Amount Paid</label>
                  <div class="col-sm-7">
                    <input type="number" class="form-control" name="securityAmountPaid" value="${reservation.securityAmountPaid}" step="0.01" required>
                  </div>
                </div>
		 
		 
		<input type="hidden" name="reservationId"  value="${reservation.reservationId}"/>
		<!-- 
		<input type="submit" value="Update Reservation" />
		 -->
		<div class="row mb-3">
                  <label class="col-sm-10 col-form-label">Save & Update Reservation Details</label>
                  <div class="col-sm-9">
                    <button type="submit" class="btn btn-primary"  value="Update Reservation">Update Reservation</button>
                  </div>
                </div>
	</form>
 </div>
          </div>

        </div></section></main>
     
 <jsp:include page="AdminFooter.jsp"></jsp:include>
  
  
  <jsp:include page="AdminJs.jsp"></jsp:include>
  
  	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
</body>
</html>