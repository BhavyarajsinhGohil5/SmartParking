<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Edit User Details</title>

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
          <li class="breadcrumb-item">Users</li>
          <li class="breadcrumb-item">List Users</li>
          <li class="breadcrumb-item active">Edit User</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    	
	<section class="section">

<div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit User Details</h5>
    

	<form action="updateuser" method="post">
	 <div class="row mb-3">
                  <label for="title" class="col-sm-3 col-form-label" >First Name</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" name="firstName" value="${user.firstName}" required>
                  </div>
                </div>
		
		 <div class="row mb-3">
                  <label for="address" class="col-sm-3 col-form-label">Last Name</label>
                  <div class="col-sm-9">
                    <input class="form-control" type="text" name="lastName" value="${user.lastName}" required>
                  </div>
                </div>
		 
		 <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-3 col-form-label">Email</label>
                  <div class="col-sm-9">
                    <input type="email" class="form-control" name="email" placeholder="Email" required value="${user.email}">
                  </div>
                </div>
                
         <%--  <div class="row mb-3">
                  <label for="inputContact" class="col-sm-2 col-form-label">Contact No.</label>
                  <div class="col-sm-10">
                    <input type="tel" class="form-control" name="contactNum" placeholder="Contact Number" maxlength="10" pattern="[0-9]{10}" value="${user.contact_num}" required>
                  </div>
                </div> --%>
                <div class="row mb-3">
  					<label for="inputContact" class="col-sm-3 col-form-label">Contact No.</label>
  					<div class="col-sm-9">
    					<input type="tel" class="form-control" id="inputContact" name="contactNum" placeholder="Enter 10-digit Contact Number" maxlength="10" pattern="[0-9]{10}" title="Please enter a 10-digit contact number" value="${user.contactNum}" required>
  					</div>
				</div>
             <div class="row mb-3">
                  <label for="inputCity" class="col-sm-3 col-form-label">City No.</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" name="city" placeholder="City" value="${user.city}" required>
                  </div>
                </div>   
                
	
     	                <fieldset class="row mb-3">
                  <legend class="col-form-label col-sm-3 pt-0">Gender</legend>
                  <div class="col-sm-7">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" id="malegender" name="gender" value="Male" ${user.gender == 'Male' ? 'checked' : ''} checked="">
                      <label class="form-check-label" for="malegender">
                        Male
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" id="femalegender" name="gender" value="Female" ${user.gender == 'Female' ? 'checked' : ''} >
                      <label class="form-check-label" for="femalegender">
                        Female
                      </label>
                    </div>
             </div>
                </fieldset>
     	
     	<%-- <div class="row mb-3">
                  <label for="address" class="col-sm-3 col-form-label">Profile Picture</label>
                  <div class="col-sm-9">
                    <input class="form-control" type="file" id="profilePic" name="profilePic"  value="${user.profile_pic_path}" required>
                  </div>
                </div> --%>
<%-- <div class="row mb-3">
  <label for="profilePic" class="col-sm-3 col-form-label">Profile Picture</label>
  <div class="col-sm-9">
    <input class="form-control" type="file" id="profilePic" name="profilePic" required>
    <!-- Display the existing profile picture -->
    <c:if test="${not empty users.profile_pic_path}">
      <img src="${users.profile_pic_path}" alt="Profile Picture" class="img-thumbnail mt-2" width="100">
    </c:if>
  </div>
</div>
 --%>
<div class="row mb-3">
  <label for="profilePic" class="col-sm-3 col-form-label">Profile Picture</label>
  <div class="col-sm-9">
    <img alt="" src="${user.profilePicPath}" height="50px" width="50px">
    <input type="file" name="profilePic" id="profilePic" class="form-control" value="${user.profilePicPath}" required>
  </div>
</div>

<div class="row mb-3">
                <label class="col-sm-3 col-form-label" for="role">Role</label>
<div class="col-sm-9">
                <select name="role" id="role" class="form-control" required>
                    <option value="">-- Select Role --</option>
                    <option value="user" ${user.role == 'USER' ? 'selected' : ''}>USER</option>
                    <option value="admin" ${user.role == 'ADMIN' ? 'selected' : ''}>ADMIN</option>
                    <option value="owner" ${user.role == 'OWNER' ? 'selected' : ''}>OWNER</option>
                </select>
                </div>
            </div>



                <div class="row mb-3">
                  <label for="address" class="col-sm-3 col-form-label">Password</label>
                  <div class="col-sm-9">
                    <input class="form-control" type="password" name="password" placeholder="Password" value="${user.password}" required>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="address" class="col-sm-3 col-form-label">Confirm Password</label>
                  <div class="col-sm-9">
                    <input class="form-control" type="password" name="confirmpassword" placeholder="Confirm Password" value="${user.confirmpassword}" required>
                  </div>
                </div>	
     
		<input type="hidden" name="userId"  value="${user.userId}"/>
		 
		<div class="row mb-3">
                  <label class="col-sm-7 col-form-label">Save & Update User Details</label>
                  <div class="col-sm-9">
                    <button type="submit" class="btn btn-primary" >Update User</button>
                  </div>
                </div>
		<!-- <input type="submit" value="Update Parking" /> -->
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