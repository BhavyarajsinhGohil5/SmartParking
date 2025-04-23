<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Reservation</title>
</head>
<body>
 <h2>Edit Reservation</h2>
	<form action="updatereservation" method="post">
	
		Title : <input type="date" name="date" value="${reservation.date}" required/><br> <br>
		StartTime: <input type="time" name="startTime" value="${reservation.startTime}" required/><br>
     	EndTime: <input type="time" name="endTime" value="${reservation.endTime}" required/><br>
		PaymentStatus:
		 <select name="paymentStatus"  required>
            <option value="Completed" ${reservation.paymentStatus == 'Completed' ? 'selected' : ''}>Completed</option>
            <option value="Pending" ${reservation.paymentStatus == 'Pending' ? 'selected' : ''}>Pending</option>
            <option value="Failed" ${reservation.paymentStatus == 'Failed' ? 'selected' : ''}>Failed</option>
        </select><br><br>
	
		 AmountPaid:<input type="number" name="amountPaid" step="0.01" value="${reservation.amountPaid}" required/><br><br>
     SecurityAmountPaid:<input type="number" name="securityAmountPaid" step="0.01" value="${reservation.securityAmountPaid}" required/><br><br>
		 
		<input type="hidden" name="reservationId"  value="${reservation.reservationId}"/>
		
		<input type="submit" value="Update Reservation" />
	</form>

</body>
</html>