<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Payment Details</title>

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
          <li class="breadcrumb-item">Payment</li>
          <li class="breadcrumb-item active">Add Payment</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
	
	<section class="section">

<div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Payment Details</h5>      


    <%-- <label>Total Amount: ₹</label><input type="number" name="amount" id="amount" value="${amount}" disabled/> --%>
<div class="row mb-2">
    <!-- Display the total amount -->
    <label class="col-sm-7 col-form-label">Total Amount: ₹</label>
    <div class="col-sm-4">
    <input type="number" name="amount" id="amount" value="${amount}" disabled/>
</div>
</div>
 <!-- Display user info (read-only) -->
 <%--   <div class="row mb-3">
    <label class="col-sm-4 col-form-label">User:</label>
    <div class="col-sm-8">
        <input class="form-control" type="text" 
               value="${user.firstName} (${user.email})" readonly />
    </div>
</div> --%>


<form action="adminpay" method="post">
	
<%-- 	Amount : <input type="text" readonly="readonly" value="${amount}" value="500"/><Br><br> 
	Credit Card : <input type="text" size="16" name="ccNum"/><Br><Br>  
	ExpDate : <input type="text" name="expDate" size="4"/><br><br> 
	
	<input type="submit" value="Pay"/>  --%>
	    <div class="row mb-3">
                  <label for="ccNum" class="col-sm-7 col-form-label">Card Number:</label>
                  <div class="col-sm-5">
                    <input class="form-control" type="text" id="ccNum" name="ccNum" required>
                  </div>
                </div>
<!--  <label>Card Number:</label>
        <input type="text" name="ccNum" required /><br><br> -->

<div class="row mb-3">
                  <label for="expDate" class="col-sm-7 col-form-label">Expiry Date (MM/YY):</label>
                  <div class="col-sm-5">
                    <input class="form-control" type="text" id="expDate" name="expDate" required>
                  </div>
                </div>
        <!--<label>Expiry Date (MM/YY):</label>
         <input type="text" name="expDate" required /><br><br> -->

<input type="hidden" name="reservationId"  id="reservationId" value="${reservationId}"/>
        
        <div class="row mb-3">
                  <label class="col-sm-3 col-form-label">User</label>
                  <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" name="userId" id="userId" class="form-control" required>
                      <option selected="">Select User</option>
                      <c:forEach items="${allUser}" var="u">
                                  <option value="${u.userId}">${u.firstName} ${u.lastName} ${p.title}</option>
                                </c:forEach>
                    </select>
                  </div>
                </div>
        
       <!--  <button type="submit">Pay Now</button> -->
         <div class="row mb-3">
                  <label class="col-sm-7 col-form-label">Save & Submit Payment Details</label>
                  <div class="col-sm-9">
                    <button type="submit" class="btn btn-primary"  value="Pay">Pay Now</button>
                  </div>
                </div>
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