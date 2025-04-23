<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add Vehicle Details</title>


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
          <li class="breadcrumb-item">Vehicle</li>
          <li class="breadcrumb-item active">Add Vehicle</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
	
	<section class="section">

<div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Vehicle Details</h5>
     
     <form action="savevehicle" method="post">
     <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-7 col-form-label">Vehicle Registration Number</label>
                  <div class="col-sm-5">
                    <input class="form-control" type="text" id="vehicleRegNo" name="vehicleRegNo" 
       placeholder="MH-12-AB-1234"  maxlength="13" required oninput="formatVehicleReg(this)">
                  </div>
                </div>
     <!-- VehicleRegNo: <input type="text" name="vehicleRegNo" id="vehicleRegNo" maxlength="13" placeholder="MH-12-AB-1234" required oninput="formatVehicleReg(this)"/> <br><br>
      -->
     <fieldset class="row mb-3">
                  <legend class="col-form-label col-sm-3 pt-0">Vehicle Type</legend>
                  <div class="col-sm-7">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="vehicleType" value="4 Wheeler" checked="">
                      <label class="form-check-label" for="4 Wheeler">
                        4 Wheeler
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="vehicleType" value="2 Wheeler" >
                      <label class="form-check-label" for="2 Wheeler">
                        2 Wheeler
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="vehicleType" value="SUV" >
                      <label class="form-check-label" for="SUV">
                        SUV
                      </label>
                    </div>
                  </div>
                </fieldset>
     
     
     
     <!-- 
     VehicleType:<br><br>
     4 Wheeler<input type="radio" name="vehicleType" value="4 Wheeler"/><br><br>
     2 Wheeler<input type="radio" name="vehicleType" value="2 Wheeler" /><br><br>
     SUV<input type="radio" name="vehicleType" value="SUV" /><br><br> -->
    
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
    
    
    
    
 <%--    <label for="userId" class="form-label">User:</label>---<input type="number" id="userId" name="userId" placeholder="Enter User ID" required>
     <select name="userId" id="userId" class="form-control" required>
                                <option value="">Select User</option>
                                <c:forEach items="${allUser}" var="u">
                                  <option value="${u.userId}">${u.firstName}</option>
                                </c:forEach>
                              </select> --%>
     <div class="row mb-3">
                  <label class="col-sm-7 col-form-label">Save & Submit Vehicle Details</label>
                  <div class="col-sm-9">
                    <button type="submit" class="btn btn-primary"  value="Save Vehicle">Save Vehicle</button>
                  </div>
                </div>
    <!--  <input type="submit" value="Save Vehicle" /> -->
     </form> 
     </div>
     </div>
     </div>
     </section>
     </main>
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

  <jsp:include page="AdminFooter.jsp"></jsp:include>
  
  
  <jsp:include page="AdminJs.jsp"></jsp:include>
  
  	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
</body>
</html>