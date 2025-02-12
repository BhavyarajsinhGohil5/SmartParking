<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
</head>
<h1>Change Password</h1>

<form action="updatepassword" method="post">

Email: <input type="text" name="email"/><br><br>
OTP: <input type="text" name="otp"/><br><br>

New Password: <input type="password" name="password"/><br><br>
Confirm Password: <input type="password" name="confirmpassword"/><br><br>
<input type="submit" value="Update Password"/>
</form> 
<br><br>
<a href="login">Return to Login</a>

</body>
</html>