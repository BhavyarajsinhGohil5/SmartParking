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
<title>View Location</title>
</head>

<body>
	<table border="1">
		<tr>
			<th>Location ID</th>
            <th>Location Name</th>
</tr>
		<c:forEach items="${location}" var="l">
			<tr>
							<td>${l[0]}</td>
	 						<td>${l[1]}</td>                            
			</tr>
		</c:forEach>


	</table>
	<hr>
	<hr>
	${location[0][0]}<br>
	${location[0][1]}<Br>
	



</body>
</html>