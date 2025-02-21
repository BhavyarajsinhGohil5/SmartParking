<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
     HourlyChargeTwoWheeler : <input type="text" id="hourlyCharge2wheeler" name="hourlyCharge2wheeler" 
       placeholder="₹30.00" oninput="formatCurrency(this)" required>
    HourlyChargeFourWheeler : <input type="text" id="hourlyCharge4wheeler" name="hourlyCharge4wheeler" 
       placeholder="₹00.00" oninput="formatCurrency(this)" required> <br><br>
     ParkingType:Road<input type="radio" name="parkingType" value="road"/><br><br>
       		Ground<input type="radio" name="parkingType" value="ground" /><br><br>
     		Building<input type="radio" name="parkingType" value="building" /><br><br>
     		
     Latitude:<input type="number" id="latitude" name="latitude" step="0.000001" min="-90" max="90" placeholder="Enter Latitude" required>
     Longitude:<input type="number" id="longitude" name="longitude" step="0.000001" min="-180" max="180" placeholder="Enter Longitude" required>
    
     <input type="submit" value="Save Parking" />
     </form> 
 <script>
function formatCurrency(input) {
    // Remove everything except numbers and decimals
    let value = input.value.replace(/[^0-9.]/g, "");

    // Ensure only one decimal point
    let decimalCount = (value.match(/\./g) || []).length;
    if (decimalCount > 1) {
        value = value.substring(0, value.lastIndexOf("."));
    }

    // Split value into whole and decimal parts
    let parts = value.split(".");

    // Ensure at least 2 digits before the decimal
    if (parts[0].length === 1 && parts[0] === "0") {
        parts[0] = ""; // Remove leading zero if present
    }

    // Ensure 2 decimal places
    if (parts.length > 1) {
        parts[1] = (parts[1] + "00").slice(0, 2);
        value = parts[0] + "." + parts[1];
    } else {
        value = parts[0]; // No decimal typed yet
    }

    // Add ₹ symbol at the beginning
    input.value = value ? "₹" + value : "";
}
</script>
</body>
</html>