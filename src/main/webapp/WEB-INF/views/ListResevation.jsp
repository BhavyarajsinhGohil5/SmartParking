<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation</title>
</head>
<body>
<h1>Reservation</h1>
<table border="1">
    <tr>
        <th>Reservation ID</th>
        <th>User ID</th>
        <th>Parking Slot ID</th>
        <th>Parking ID</th>
        <th>Date</th>
        <th>Vehicle ID</th>
        <th>Start Time</th>
        <th>End Time</th>
        <th>Payment Status</th>
        <th>Amount Paid</th>
        <th>Security Amount Paid</th>
    </tr>
    <c:forEach var="r" items="${reservationList} ">
        <tr>
            <td>${r.reservationId}</td>
            <td>${r.userId}</td>
            <td>${r.parkingSlotId}</td>
            <td>${r.parkingId}</td>
            <td>${r.date}</td>
            <td>${r.vehicleId}</td>
            <td>${r.startTime}</td>
            <td>${r.endTime}</td>
            <td>${r.paymentStatus}</td>
            <td>${r.amountPaid}</td>
            <td>${r.securityAmountPaid}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>