<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Edit Parking Details</title>

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
          <li class="breadcrumb-item">Parking</li>
          <li class="breadcrumb-item">List Parking</li>
          <li class="breadcrumb-item active">Edit Parking</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    	
	<section class="section">

<div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Parking Details</h5>
    

	<form action="updateparking" method="post">
	 <div class="row mb-3">
                  <label for="title" class="col-sm-3 col-form-label" >Title</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" name="title" value="${parking.title}" required>
                  </div>
                </div>
		<%--  Title : <input type="text" name="title" value="${parking.title}" required/><br> <br>
		  --%>
		 <div class="row mb-3">
                  <label for="address" class="col-sm-3 col-form-label">Address</label>
                  <div class="col-sm-9">
                    <textarea class="form-control" style="height: 100px" name="address" required>${parking.address}</textarea>
                  </div>
                </div>
		 <%-- Address : <input type="text" name="address" value="${parking.address}" required/><br> <br>
		  --%>
		 
		 <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-7 col-form-label">Total Capacity (2 Wheeler)</label>
                  <div class="col-sm-5">
                    <input class="form-control" type="number" value="${parking.totalCapacity2wheeler}" name="totalCapacity2wheeler" min="1" max="99" step="1" required>
                  </div>
                </div>
		<%--  TotalCapacity(2 Wheeler) : <input type="number" name="totalCapacity2wheeler" value="${parking.totalCapacity2wheeler}"  min="1" max="99" step="1" required/><br> <br>
		  --%>
		 <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-7 col-form-label">Total Capacity (4 Wheeler)</label>
                  <div class="col-sm-5">
                    <input class="form-control" type="number" name="totalCapacity4wheeler" value="${parking.totalCapacity4wheeler}" min="1" max="99" step="1" required>
                  </div>
                </div>
		
		<%--  
		 TotalCapacity(4 Wheeler) : <input type="number" name="totalCapacity4wheeler" value="${parking.totalCapacity4wheeler}"  min="1" max="99" step="1" required/><br> <br>
		 --%>
		<div class="row mb-3">
                  <label for="inputNumber" class="col-sm-7 col-form-label">Hourly Charge Two-Wheeler</label>
                  <div class="col-sm-5">
                    <input class="form-control" type="number" id="hourlyCharge2wheeler" name="hourlyCharge2wheeler" value="${parking.hourlyCharge2wheeler}"
       placeholder="₹15.00" step="0.01" min="0" required>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputDate" class="col-sm-7 col-form-label">Hourly Charge Four-Wheeler</label>
                  <div class="col-sm-5">
                    <input  class="form-control" type="number" id="hourlyCharge4wheeler" name="hourlyCharge4wheeler" value="${parking.hourlyCharge4wheeler}"
       placeholder="₹25.00" step="0.01" min="0" required>
                  </div>
                </div>
	<%-- 	
		HourlyChargeTwoWheeler : <input type="number" id="hourlyCharge2wheeler" name="hourlyCharge2wheeler" placeholder="₹15.00" step="0.01" min="0" value="${parking.hourlyCharge2wheeler}" required>
    	HourlyChargeFourWheeler : <input type="number" id="hourlyCharge4wheeler" name="hourlyCharge4wheeler" placeholder="₹25.00" step="0.01" min="0" value="${parking.hourlyCharge4wheeler}" required> <br><br>
     	 --%>
     	                <fieldset class="row mb-3">
                  <legend class="col-form-label col-sm-3 pt-0">Parking Type</legend>
                  <div class="col-sm-7">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="parkingType" value="Road" ${parking.parkingType == 'Road' ? 'checked' : ''} checked="">
                      <label class="form-check-label" for="road">
                        Road
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="parkingType" value="Ground" ${parking.parkingType == 'Ground' ? 'checked' : ''} >
                      <label class="form-check-label" for="Ground">
                        Ground
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="parkingType" value="Building" ${parking.parkingType == 'Building' ? 'checked' : ''} >
                      <label class="form-check-label" for="Building">
                        Building
                      </label>
                    </div>
                  </div>
                </fieldset>
     <!-- 
     	ParkingType:
     	Road<input type="radio" name="parkingType" value="Road"/><br><br>
     	Ground<input type="radio" name="parkingType" value="Ground" /><br><br>
     	Building<input type="radio" name="parkingType" value="Building" /><br><br>
     	 -->
     	
     	<div class="row mb-3">
                  <label for="address" class="col-sm-3 col-form-label">Latitude</label>
                  <div class="col-sm-9">
                    <input class="form-control" type="number" id="latitude" name="latitude" step="0.000001" min="-90" max="90" placeholder="Enter Latitude" value="${parking.latitude}" required>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="address" class="col-sm-3 col-form-label">Longitude</label>
                  <div class="col-sm-9">
                    <input class="form-control" type="number" id="longitude" name="longitude" step="0.000001" min="-180" max="180" placeholder="Enter Longitude" value="${parking.longitude}" required>
                  </div>
                </div>	
     	<%-- Latitude:<input type="number" id="latitude" name="latitude" step="0.000001" min="-90" max="90" placeholder="Enter Latitude" value="${parking.latitude}" required>
     	Longitude:<input type="number" id="longitude" name="longitude" step="0.000001" min="-180" max="180" placeholder="Enter Longitude" value="${parking.longitude}" required>
		
		 --%>
		<%-- 
		<div class="row mb-3">
                  <label class="col-sm-3 col-form-label">Location</label>
                  <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" name="locationId" required>
                      <option selected="">Select Location</option>
                                            <c:forEach items="${allLocation}" var="l">
                                  <option value="${l.locationId}">${l.locationName}</option>
                                </c:forEach>                      
                    </select>
                  </div>
                </div>
		 --%>
		<div class="row mb-3">
    <label class="col-sm-3 col-form-label">Location</label>
    <div class="col-sm-9">
        <select class="form-select" aria-label="Default select example" name="locationId" id="locationId" required>
            <option >Select Location</option>
           <%--  <c:forEach items="${allParking}" var="p">          
                <option value="${p[5]}" ${p[5] == 'l[0]' ? 'selected' : ''}>
                    ${l[1]}
                </option>
                </c:forEach> --%>
               <%--  <c:forEach items="${allLocation}" var="l">
                  <option value="${l.locationId}" ${parking.locationId == l.locationId ? 'selected' : ''}>${l.locationName}</option>
                </c:forEach> --%>
                                     <%--  <c:forEach items="${allLocation}" var="l">
                                  <option value="${l.locationId}" ${parking.locationId == '${l.locationId}' ? 'selected' : '' }>${l.locationName}</option>
                                </c:forEach> --%>
                      <c:forEach items="${allLocation}" var="l">
                        <option value="${l.locationId}">${l.locationName}</option>
                    </c:forEach>
             <%--    <c:forEach items="${allLocation}" var="l">
                <option value="${l[0]}" ${l[0] == 'p[5]' ? 'selected' : ''}>
                    ${l[1]}
                </option>
                </c:forEach> --%>
        </select>
    </div>
</div>
		
		
		
		<div class="row mb-3">
                  <label class="col-sm-3 col-form-label">Active</label>
                  <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" name="active" required>
                      <option selected="">Select Active Status</option>
                      <option value="Active" ${parking.active == 'Active' ? 'selected' : ''}>Active</option>
                      <option value="Inactive" ${parking.active == 'Inactive' ? 'selected' : ''}>Inactive</option>                      
                    </select>
                  </div>
                </div>
		
		<%-- Active:
		<select name="active" required>
			<option value="Active" ${parking.active == 'Active' ? 'selected' : ''}>Active</option>
			<option value="Inactive" ${parking.active == 'Inactive' ? 'selected' : ''}>Inactive</option>
		</select>
		<br><br> --%>
		
		<input type="hidden" name="parkingId"  value="${parking.parkingId}"/>
		
		<div class="row mb-3">
                  <label class="col-sm-7 col-form-label">Save & Update Parking Details</label>
                  <div class="col-sm-9">
                    <button type="submit" class="btn btn-primary"  value="Update Parking">Update Parking</button>
                  </div>
                </div>
		<!-- <input type="submit" value="Update Parking" /> -->
	</form>
	</div>
	</div>
	</div>
	</section>
	</main>
<script>
function formatCurrency(input) {
    let value = input.value.replace(/[^0-9.]/g, ""); // Remove non-numeric characters

    let decimalCount = (value.match(/\./g) || []).length;
    if (decimalCount > 1) {
        value = value.substring(0, value.lastIndexOf("."));
    }

    let parts = value.split(".");

    if (parts.length > 1) {
        parts[1] = (parts[1] + "00").slice(0, 2);
        value = parts[0] + "." + parts[1];
    } else {
        value = parts[0];
    }

    input.value = value ? "₹" + value : "";
}

// Remove ₹ before form submission
document.querySelector("form").addEventListener("submit", function() {
    document.getElementById("hourlyCharge2wheeler").value = document.getElementById("hourlyCharge2wheeler").value.replace(/₹/g, "");
    document.getElementById("hourlyCharge4wheeler").value = document.getElementById("hourlyCharge4wheeler").value.replace(/₹/g, "");
});
</script>

  <jsp:include page="AdminFooter.jsp"></jsp:include>
  
  
  <jsp:include page="AdminJs.jsp"></jsp:include>
  
  	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
</body>
</html>