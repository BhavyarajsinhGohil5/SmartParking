<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Reservation</title>
</head>
<body>
     <h2>Add Reservation</h2>
     
     <form action="savereservation" method="post">
     
     Date: <input type="date" name="date" required/><br><br>
     Start Time: <input type="time" name="startTime" required/><br>
     End Time: <input type="time" name="endTime" required/><br>
     Payment Status:<select name="paymentStatus">
            <option value="Completed">Completed</option>
            <option value="Pending">Pending</option>
            <option value="Failed">Failed</option>
        </select><br><br>
     Amount Paid:<input type="number" name="amountPaid" step="0.01" required/><br><br>
     Security Amount Paid:<input type="number" name="securityAmountPaid" step="0.01" required/><br><br>
     
     <label for="userId" class="form-label">User:</label><%-----<input type="number" id="userId" name="userId" placeholder="Enter User ID" required> --%>
     <select name="userId" id="userId" class="form-control" required>
                                <option value="">Select User</option>
                                <c:forEach items="${allUser}" var="u">
                                  <option value="${u.userId}">${u.firstName}</option>
                                </c:forEach>
                              </select>
     
     <label for="vehicleId" class="form-label">Vehicle:</label><%-----<input type="number" id="userId" name="userId" placeholder="Enter User ID" required> --%>
     <select name="vehicleId" id="vehicleId" class="form-control" required>
                                <option value="">Select Vehicle</option>
                                <c:forEach items="${allVehicle}" var="v">
                                  <option value="${v.vehicleId}">${v.vehicleRegNo}</option>
                                </c:forEach>
                              </select>
     
      <label for="parkingId" class="form-label">Parking:</label><%-----<input type="number" id="userId" name="userId" placeholder="Enter User ID" required> --%>
     <select name="parkingId" id="parkingId" class="form-control" required>
                                <option value="">Select Parking</option>
                                <c:forEach items="${allParking}" var="p">
                                  <option value="${p.parkingId}">${p.address}</option>
                                </c:forEach>
                              </select>
     
     
     <input type="submit" value="Save Reservation" />
     </form> 
     
     
</body>
</html>