<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Parking Slot Details</title>
</head>
<body>
<h2>Add Parking Slot Details</h2>

<form action="saveparkingslot" method="post">
     Floor : <input type="text" name="floor" /> <br><br>
     MinParkingMinutes : <input type="number" name="minParkingMinutes" placeholder="Enter Minimum Parking Minutes" required/> <br><br>
     SuvSupported: Yes<input type="radio" name="suvSupported" value="yes" required/> <br><br>
     No<input type="radio" name="suvSupported" value="no" required/><br><br>
     <input type="submit" value="Save Parking Slot" />
     </form> 

</body>
</html>