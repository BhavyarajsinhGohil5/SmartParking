<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User</title>
</head>
<body>
     <h2>New User</h2>
     
     <form action="saveuser" method="post">
     Name : <input type="text" name="fullname" /> <br><br>
     ContactNum: <input type="text" name="contactNum" /> <br><br>
     DateTime: <input type="text" name="dateTime" /> <br><br>
     VehicleRegNo: <input type="text" name="vehicleRegNo" /> <br><br>
     VehicleType: <input type="text" name="vehicleType" /> <br><br>
     
     <input type="submit" value="Save User" />
     </form> 
</body>
</html>