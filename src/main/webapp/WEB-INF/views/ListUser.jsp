<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin | List User</title>


<jsp:include page="AdminCss.jsp"></jsp:include>

<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
  </head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	
	
	<main id="main" class="main">

    <div class="pagetitle">
      <h1>List User</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item active">List User</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row" style="min-height: 500px";>

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

              

                <div class="card-body">
                  <h5 class="card-title">Users <span>/All</span></h5>
  <div class="table-responsive">
<table class="table datatable datatable-table table-hover" id="myTable">
                <thead class="table-dark">
                    <tr>
                    	<th>User ID</th>
                    	<th>Profile</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Contact No.</th>
                        <th>Password</th>
                        <th>Confirm Password</th>
                        <th>City</th>
                        <th>Role</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${allUser}" var="u">
                        <tr>
                        	<td>${u[0]}</td>
                        	<td><img src="${u[13]}" height="70px" width="80px"></td>
                            <td>${u[7]}</td>
                            <td>${u[9]}</td>
                            <td>${u[8]}</td>
                            <td>${u[6]}</td>
                            <td>${u[4]}</td>
                            <td>${u[10]}</td>
                            <td>${u[3]}</td>
                            <td>${u[2]}</td>
                            <td>${u[11]}</td>
                            <td> <div class="d-flex gap-1">
                                <a href="viewuser?userId=${u[0]}" class="btn btn-info btn-sm"><i class="ri-eye-line"></i> View</a> 
                                <a href="deleteuser?userId=${u[0]}" class="btn btn-danger btn-sm"><i class="bx bx-trash"></i> Delete</a>
                                <a href="edituser?userId=${u[0]}" class="btn btn-warning btn-sm"><i class="ri-pencil-line"></i> Edit</a>
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
		let table = new DataTable('#myTable',{
			 
		});
	});
	</script>
  
</body>
</html>