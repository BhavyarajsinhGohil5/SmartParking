<%----- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Parking</title>
</head>
<body>
<h2>View Parking</h2>
Title : ${parking.title }<br>
Address :  ${parking.address }<br>
TotalCapacity(2 Wheeler) : ${parking.totalCapacity2wheeler }<br>
TotalCapacity(4 Wheeler) : ${parking.totalCapacity4wheeler }<br>
HourlyChargeTwoWheeler : ${parking.hourlyCharge2wheeler }<br>
HourlyChargeFourWheeler : ${parking.hourlyCharge4wheeler }<br>
ParkingType : ${parking.parkingType }<br>
Latitude : ${parking.latitude }<br>
Longitude : ${parking.longitude }<br>

</body>
</html>
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Reservation</title>
</head>

<body>

	<table border="1">
		<tr>

			<%---- <th>ParkingCode</th>--%>
			<th>Reservation ID</th>
			<th>User ID</th>
        	<th>Parking ID</th>
     		<th>Vehicle ID</th>
            <th>Date</th>
            <th>Start Time</th>
            <th>End Time</th>
            <!-- <th>Owner ID</th> -->
            <th>Payment Status</th>
            <th>Amount Paid</th>
            <th>Security Amount Paid</th>
            <th>VehicleRegNo</th>
        	<th>VehicleType</th>
        	<th>FirstName</th>
			<th>LastName</th>
			<th>Latitude</th>
            <th>Longitude</th>
            <th>Title</th>
            <th>Address</th>									
		</tr>
		<c:forEach items="${reservation}" var="r">
			<tr>
							<td>${r[0]}</td>
	 						<td>${r[8]}</td>
                            <td>${r[4]}</td>
                            <td>${r[9]}</td>
                            <td>${r[2]}</td>
                            <td>${r[7]}</td>
                            <td>${r[3]}</td>
                            <%-- <td>${p[7]}</td> --%>
                            <td>${r[5]}</td>
                            <td>${r[1]}</td>
                            <td>${r[6]}</td>
                            <td>${r[17]}</td>
                            <td>${r[18]}</td>
                            <td>${r[10]}</td>
                            <td>${r[11]}</td>
                            <td>${r[14]}</td>
                            <td>${r[15]}</td>
                            <td>${r[12]}</td>
                            <td>${r[13]}</td>
			</tr>
		</c:forEach>


	</table>
	<hr>
	<hr>
	${reservation[0][0]}<br>
	${reservation[0][1]}<br>
	



</body>
</html>