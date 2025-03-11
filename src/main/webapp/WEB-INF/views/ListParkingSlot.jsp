<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Parking Slot</title>
</head>
<body>
<h2>Parking Slot</h2>
<table border="1">
    <tr>
      <%----   <th>Parking ID</th>
        <th>Location ID</th>
        <th>Owner ID</th> --%>
        <th>Floor</th>
        <th>MinParkingMinutes</th>
        <th>SuvSupported</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${parkingslotList}" var="ps">
        <tr>
            <td>${ps.floor}</td>
            <td>${ps.minParkingMinutes}</td>
            <td>${ps.suvSupported}</td>
           	<td><a href="viewparkingslot?parkingslotId=${ps.parkingslotId}">View</a> | <a href="deleteparkingslot?parkingslotId=${ps.parkingslotId}">Delete</a> | Edit
	    </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>