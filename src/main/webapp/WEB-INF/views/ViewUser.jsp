<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Admin | View User</title>
<jsp:include page="AdminCss.jsp"></jsp:include>


  </head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	
	
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>View User Details</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">List User</li>
          <li class="breadcrumb-item active">View User</li>
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


<%-- <h2>View User</h2>
<c:forEach items="${user}" var="u">
User ID : ${u[0]}<br>
Profile : ${u[13]}
FirstName : ${u[7]}<br>
LastName : ${u[9]}<br>
Gender : ${u[8]}<br>
Email : ${u[6]}<br>
City : ${u[2]}<br>
Contact.no : ${u[4]}<br>
Password : ${u[10]}<br>
Confirm password : ${u[3]}<br>
Role : ${u[11]}
</c:forEach> --%>
    <div class="card-body">
  <h5 class="card-title">User <span>Information</span></h5>

<c:forEach items="${user}" var="u">
    <div class="card mb-4 p-4 shadow-sm border rounded-3">
      <div class="row g-4">
      
        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">User ID</label>
            <input type="text" class="form-control" value="${u[0]}" readonly>
          </div>
        </div>
<%-- 
        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Profile</label>
            <input type="text" class="form-control" value="${u[13]}" readonly>
          </div>
        </div> --%>

       <%--  <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">First Name</label>
            <input type="text" class="form-control" value="${u[7]}" readonly>
          </div>
        </div>

  <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Last Name</label>
            <input type="text" class="form-control" value="${u[9]}" readonly>
          </div>
        </div> --%>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Gender</label>
            <input type="text" class="form-control" value="${u[8]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Email</label>
            <input type="text" class="form-control" value="${u[6]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">City</label>
            <input type="text" class="form-control" value="${u[2]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Contact Number</label>
            <input type="text" class="form-control" value="${u[4]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Password</label>
            <input type="text" class="form-control" value="${u[3]}" readonly>
          </div>
        </div>

        <div class="col-md-6">
          <div class="form-group">
            <label class="form-label fw-semibold">Role</label>
            <input type="text" class="form-control" value="${u[11]}" readonly>
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