<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>State Name</title>
</head>
<body>
 <h2>Enter State Name</h2>
 
    <form action="savestate" method="post">
    
        StateName: <input type="text" name="stateName" placeholder="Enter State Name" required/><br><br>
        <input type="submit" value="Save State"/>
        
    </form>
    
</body>
</html>