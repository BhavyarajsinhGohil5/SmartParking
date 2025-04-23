<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>
</head>
<body>
<h2>View User</h2>
<c:forEach items="${user}" var="u">
User ID : ${u[0]}<br>
Profile : ${u[13]}
FirstName : ${u[7]}<br>
LastName : ${u[9]}<br>
Gender : ${u[8]}<br>
Email : ${u[6]}<br>
City : ${u[2]}<br>
Contact.no : ${u[4]}<br>
Password : ${u[10]}<br>
Confirm password : ${u[3]}<br>
Role : ${u[11]}
</c:forEach>
</body>
</html>