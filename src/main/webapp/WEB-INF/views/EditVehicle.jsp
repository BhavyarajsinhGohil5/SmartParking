<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Vehicle</title>
</head>
<body>
 <h2>Edit Vehicle</h2>
	<form action="updatevehicle" method="post">
		<%---- ParkingCode : <input type="text" name="parkingCode" value="${vehicle.parkingCode}" /><br> <br>--%>
		VehicleRegNo : <input type="text" name="vehicleRegNo" value="${vehicle.vehicleRegNo}" maxlength="13" placeholder="MH-12-AB-1234" required oninput="formatVehicleReg(this)"/><br> <br>
		VehicleType:
			4 Wheeler<input type="radio" name="vehicleType" value="4 Wheeler"/><br><br>
     		2 Wheeler<input type="radio" name="vehicleType" value="2 Wheeler" /><br><br>
     		SUV<input type="radio" name="vehicleType" value="SUV" /><br><br>
		<input type="hidden" name="vehicleId"  value="${vehicle.vehicleId}"/>
		
		<input type="submit" value="Update Vehicle" />
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