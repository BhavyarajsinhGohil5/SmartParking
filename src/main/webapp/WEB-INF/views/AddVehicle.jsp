<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Vehicle</title>
</head>
<body>
     <h2>Add Vehicle</h2>
     
     <form action="savevehicle" method="post">
     
     VehicleRegNo: <input type="text" name="vehicleRegNo" id="vehicleRegNo" maxlength="13" placeholder="MH-12-AB-1234" required oninput="formatVehicleReg(this)"/> <br><br>
     VehicleType:<br><br>
     4 Wheeler<input type="radio" name="vehicleType" value="4 Wheeler"/><br><br>
     2 Wheeler<input type="radio" name="vehicleType" value="2 Wheeler" /><br><br>
     SUV<input type="radio" name="vehicleType" value="SUV" /><br><br>
    <label for="userId" class="form-label">User:</label><%-----<input type="number" id="userId" name="userId" placeholder="Enter User ID" required> --%>
     <select name="userId" id="userId" class="form-control" required>
                                <option value="">Select User</option>
                                <c:forEach items="${allUser}" var="u">
                                  <option value="${u.userId}">${u.firstName}</option>
                                </c:forEach>
                              </select>
     
     <input type="submit" value="Save Vehicle" />
     </form> 
     
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
</body>
</html>