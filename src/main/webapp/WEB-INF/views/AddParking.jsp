<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Parking Details</title>
</head>
<body>
     <h2>Add Parking Details</h2>
     
     <form action="saveparking" method="post">
     Title : <input type="text" name="title" /> <br><br>
     Address : <input type="text" name="address" /> <br><br>
     TotalCapacity(2 Wheeler): <input type="number" name="totalCapacity2wheeler" min="1" max="99" step="1" required/> <br><br>
     TotalCapacity(4 Wheeler): <input type="number" name="totalCapacity4wheeler" min="1" max="99" step="1" required/> <br><br>
     HourlyChargeTwoWheeler : <input type="number" id="hourlyCharge2wheeler" name="hourlyCharge2wheeler" 
       placeholder="₹30.00" step="0.01" min="0" required>
    HourlyChargeFourWheeler : <input type="number" id="hourlyCharge4wheeler" name="hourlyCharge4wheeler" 
       placeholder="₹00.00" step="0.01" min="0" required> <br><br>
     ParkingType:Road<input type="radio" name="parkingType" value="road"/><br><br>
       		Ground<input type="radio" name="parkingType" value="ground" /><br><br>
     		Building<input type="radio" name="parkingType" value="building" /><br><br>
     		
     Latitude:<input type="number" id="latitude" name="latitude" step="0.000001" min="-90" max="90" placeholder="Enter Latitude" required>
     Longitude:<input type="number" id="longitude" name="longitude" step="0.000001" min="-180" max="180" placeholder="Enter Longitude" required>
    
    <label for="locationId" class="form-label">Location:</label><%-----<input type="number" id="userId" name="userId" placeholder="Enter User ID" required> --%>
     <select name="locationId" id="locationId" class="form-control" required>
                                <option value="">Select Location</option>
                                <c:forEach items="${allLocation}" var="l">
                                  <option value="${l.locationId}">${l.locationName}</option>
                                </c:forEach>
                              </select>
    
    <label for="userId" class="form-label">Owner:</label><%-----<input type="number" id="userId" name="userId" placeholder="Enter User ID" required> --%>
     <select name="userId" id="userId" class="form-control" required>
                                <option value="">Select User</option>
                                <c:forEach items="${allUser}" var="u">
                                  <option value="${u.userId}">${u.firstName}</option>
                                </c:forEach>
                              </select>
    
    
    
     <input type="submit" value="Save Parking" />
     </form> 
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
</body>
</html>