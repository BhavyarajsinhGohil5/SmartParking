<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List User</title>
</head>
<body>
<h2>List User</h2>

<table border="1">
<tr>
	<th>FirstName</th>
	<th>LastName</th>
	<th>Gender</th>
	<th>Email</th>
	<th>Contact.no</th>
	<th>password</th>
	<th>City</th>
	<th>Confirm Password</th>
</tr>

	<c:forEach items="${userList}" var="u">
	<tr>
		<td>${u.firstName}</td> 
	 	<td>${u.lastName}</td>  
	  	<td>${u.gender}</td>  
	  	<td>${u.email}</td>  
	  	<td>${u.contactNum}</td> 
	   	<td>${u.password}</td> 
	    <td>${u.city }</td>  
	    <td>${u.confirmpassword}</td>
	</tr>
	
	</c:forEach>
</table>









</body>
</html>