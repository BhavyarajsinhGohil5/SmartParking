<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Edit Location Details</title>

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
          <li class="breadcrumb-item">Location</li>
          <li class="breadcrumb-item">List Location</li>
          <li class="breadcrumb-item active">Edit Location</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    	
	<section class="section">

<div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Location Details</h5>
    

	<form action="updatelocation" method="post">
	 <div class="row mb-3">
                  <label for="location" class="col-sm-3 col-form-label" >Location Name</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" name="locationName" value="${location.locationName}" required>
                  </div>
                </div>
		
		<input type="hidden" name="locationId"  value="${location.locationId}"/>
		
		<div class="row mb-3">
                  <label class="col-sm-7 col-form-label">Save & Update Location Details</label>
                  <div class="col-sm-9">
                    <button type="submit" class="btn btn-primary"  value="Update Location">Update Location</button>
                  </div>
                </div>
		<!-- <input type="submit" value="Update Location" /> -->
	</form>
	</div>
	</div>
	</div>
	</section>
	</main>


  <jsp:include page="AdminFooter.jsp"></jsp:include>
  
  
  <jsp:include page="AdminJs.jsp"></jsp:include>
  
  	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
</body>
</html>