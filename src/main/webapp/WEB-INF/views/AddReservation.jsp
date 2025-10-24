<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add Reservation Details</title>


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
          <li class="breadcrumb-item active">Add Reservation</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
	
	<section class="section">

<div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Reservation Details</h5>
     
     <form action="savereservation" method="post">
     
     <!-- Date: <input type="date" name="date" required/><br><br>
           -->
          <div class="row mb-3">
                  <label for="date" class="col-sm-3 col-form-label" >Date</label>
                  <div class="col-sm-9">
                    <input type="date" class="form-control" name="date" required>
                  </div>
                </div>
     <!-- Start Time: <input type="time" name="startTime" required/><br>
      -->
     <div class="row mb-3">
                  <label for="startTime" class="col-sm-3 col-form-label" >Start Time</label>
                  <div class="col-sm-9">
                    <input type="time" class="form-control" name="startTime" required>
                  </div>
                </div>
     <!-- End Time: <input type="time" name="endTime" required/><br>
      -->
     <div class="row mb-3">
                  <label for="endTime" class="col-sm-3 col-form-label" >End Time</label>
                  <div class="col-sm-9">
                    <input type="time" class="form-control" name="endTime" required>
                  </div>
                </div>
     
     <!-- Payment Status:<select name="paymentStatus">
            <option value="Completed">Completed</option>
            <option value="Pending">Pending</option>
            <option value="Failed">Failed</option>
        </select><br><br>
      -->   
        <div class="row mb-3">
                  <label class="col-sm-5 col-form-label">Payment Status</label>
                  <div class="col-sm-7">
                    <select class="form-select" aria-label="Default select example" name="paymentStatus" required>
                      <option selected="">Select Payment Status</option>
                      <option value="Completed">Completed</option>
                      <option value="Pending">Pending</option>    
                      <option value="Failed">Failed</option>                  
                    </select>
                  </div>
                </div>
     <!-- Amount Paid:<input type="number" name="amountPaid" step="0.01" required/><br><br>
      -->
     
     <div class="row mb-3">
                  <label for="amountPaid" class="col-sm-5 col-form-label" > Amount Paid</label>
                  <div class="col-sm-7">
                    <input type="number" class="form-control" name="amountPaid" step="0.01" required>
                  </div>
                </div>
     <!-- Security Amount Paid:<input type="number" name="securityAmountPaid" step="0.01" required/><br><br>
      -->
     
     
     <div class="row mb-3">
                  <label for="securityAmountPaid" class="col-sm-5 col-form-label" >Security Amount Paid</label>
                  <div class="col-sm-7">
                    <input type="number" class="form-control" name="securityAmountPaid" step="0.01" required>
                  </div>
                </div>
     
     
     
  <%--    <label for="userId" class="form-label">User:</label>---<input type="number" id="userId" name="userId" placeholder="Enter User ID" required>
     <select name="userId" id="userId" class="form-control" required>
                                <option value="">Select User</option>
                                <c:forEach items="${allUser}" var="u">
                                  <option value="${u.userId}">${u.firstName}</option>
                                </c:forEach>
                              </select> --%>
    <div class="row mb-3">
                  <label class="col-sm-3 col-form-label">User</label>
                  <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" name="userId" id="userId" class="form-control" required>
                      <option selected="">Select User</option>
                      <c:forEach items="${allUser}" var="u">
                                  <option value="${u.userId}">${u.firstName}</option>
                                </c:forEach>
                    </select>
                  </div>
                </div>
     <%-- 
     <label for="vehicleId" class="form-label">Vehicle:</label>---<input type="number" id="userId" name="userId" placeholder="Enter User ID" required>
     <select name="vehicleId" id="vehicleId" class="form-control" required>
                                <option value="">Select Vehicle</option>
                                <c:forEach items="${allVehicle}" var="v">
                                  <option value="${v.vehicleId}">${v.vehicleRegNo}</option>
                                </c:forEach>
                              </select>
                             --%>  
                              
       <div class="row mb-3">
                  <label class="col-sm-3 col-form-label">Vehicle</label>
                  <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" name="vehicleId" id="vehicleId" class="form-control" required>
                      <option selected="">Select Vehicle</option>
                      <c:forEach items="${allVehicle}" var="v">
                                  <option value="${v.vehicleId}">${v.vehicleRegNo}</option>
                                </c:forEach>
                    </select>
                  </div>
                </div>
     <%-- 
      <label for="parkingId" class="form-label">Parking:</label>---<input type="number" id="userId" name="userId" placeholder="Enter User ID" required>
     <select name="parkingId" id="parkingId" class="form-control" required>
                                <option value="">Select Parking</option>
                                <c:forEach items="${allParking}" var="p">
                                  <option value="${p.parkingId}">${p.address}</option>
                                </c:forEach>
                              </select> --%>
     
     <div class="row mb-3">
                  <label class="col-sm-3 col-form-label">Parking</label>
                  <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" name="parkingId" id="parkingId" class="form-control" required>
                      <option selected="">Select Parking</option>
                      <c:forEach items="${allParking}" var="p">
                                  <option value="${p.parkingId}">${p.address}</option>
                                </c:forEach>
                    </select>
                  </div>
                </div>
     
     
     <!-- <input type="submit" value="Save Reservation" />
      -->
     
     <div class="row mb-3">
                  <label class="col-sm-7 col-form-label">Save & Submit Reservation Details</label>
                  <div class="col-sm-9">
                    <button type="submit" class="btn btn-primary"  value="Save Reservation">Save Reservation</button>
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