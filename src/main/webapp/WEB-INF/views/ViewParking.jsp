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
<title>View Parking</title>
</head>

<body>
	<table border="1">
		<tr>

			<%---- <th>ParkingCode</th>--%>
			<th>Parking ID</th>
            <th>Title</th>
            <th>Address</th>
            <th>Location Name</th>
            <th>Owner ID</th>
            <th>Total Capacity (2W)</th>
            <th>Total Capacity (4W)</th>
            <th>Hourly Charge (2W)</th>
            <th>Hourly Charge (4W)</th>
            <th>Parking Type</th>
            <th>Latitude</th>
            <th>Longitude</th>
		</tr>
		<c:forEach items="${parking}" var="p">
			<tr>
							<td>${p[0]}</td>
	 						<td>${p[1]}</td>
                            <td>${p[2]}</td>
                            <td>${p[3]}</td>
                            <td>${p[4]}</td>
                            <td>${p[5]}</td>
                            <td>${p[6]}</td>
                            <td>${p[7]}</td>
                            <td>${p[8]}</td>
                            <td>${p[9]}</td>
                            <td>${p[10]}</td>
                            <td>${p[11]}</td>
			</tr>
		</c:forEach>


	</table>
	<hr>
	<hr>
	${parking[0][0]}<br>
	${parking[0][1]}<Br>
	



</body>
</html>