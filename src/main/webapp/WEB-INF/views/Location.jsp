<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add Location Details</title>


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
          <li class="breadcrumb-item active">Add Location</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
	<section class="section">

<div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Location</h5>

<form action="savelocation" method="post">



<div class="row mb-3">
                  <label for="address" class="col-sm-3 col-form-label">Location</label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text"  name="locationName" placeholder="Enter Location" required>
                  </div>
                </div>
      <%---- Location Name: <input type="text" name="locationName" required/> <br> <br>
       LastName: <input type="text" name="lastName"/> <br> <br>
       Gender:Male<input type="radio" name="gender" value="male"/><br><br>
       		Female<input type="radio" name="gender" value="female" /><br><br>
       Email: <input type="email" name="email"/> <br> <br>
       Contact.no: <input type="tel" name="contactNum" maxlength="10" pattern="[0-9]{10}" required/> <br><br>
       password:<input type="password" name="password"/> <br> <br>
       Confirm Password: <input type="password" name="confirmpassword"/> <br><br>
       City: <input type="text" name="city"/> <br><br>
       <%----  Role: <input type="text" name="role"/> <br><br> -----%>
       <div class="row mb-3">
                  <label class="col-sm-7 col-form-label">Save & Submit Location Detail</label>
                  <div class="col-sm-9">
                    <button type="submit" class="btn btn-primary"  value="Save Location">Save Location</button>
                  </div>
                </div>
       <!-- <input type="submit" value="location"/> -->
       <!-- <br><br> -->

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