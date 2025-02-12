<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>sign up</h1>
<form action="saveuser" method="post">

       FirstName: <input type="text" name="firstName"/> <br> <br>
       LastName: <input type="text" name="lastName"/> <br> <br>
       Email: <input type="text" name="email"/> <br> <br>
       Contact.no: <input type="text" name="contact.no"/> <br><br>
       password:<input type="password" name="password"/> <br> <br>
       Confirm Passowrd: <input type="password" name="confirmpassword"/> <br><br>
       
       <input type="submit" value="signup"/>
       <br><br>

</form>

<a href="login">LOGIN</a>

</body>
</html>