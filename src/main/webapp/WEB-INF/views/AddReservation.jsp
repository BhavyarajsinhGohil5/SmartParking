<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Reservation</title>
</head>
<body>
     <h2>Add Reservation</h2>
     
     <form action="savereservation" method="post">
     
     Date: <input type="date" name="date" required/><br><br>
     StartTime: <input type="time" name="startTime" required/><br>
     EndTime: <input type="time" name="endTime" required/><br>
     PaymentStatus:<select name="paymentStatus">
            <option value="Completed">Completed</option>
            <option value="Pending">Pending</option>
            <option value="Failed">Failed</option>
        </select><br><br>
     AmountPaid:<input type="number" name="amountPaid" step="0.01" required/><br><br>
     SecurityAmountPaid:<input type="number" name="securityAmountPaid" step="0.01" required/><br><br>
     <input type="submit" value="Save Reservation" />
     </form> 
     
     
</body>
</html>