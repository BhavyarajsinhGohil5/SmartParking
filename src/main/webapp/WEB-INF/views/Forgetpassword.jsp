<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Forgot Password</h1>

<form action="sendOtp" method="post">

Email: <input type="text" name="email"/><br><br>
<input type="submit" value="Send"/>
</form>
<br><br>
<a href="login">Return to Login</a>

</body>
</html>