<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Login</h1>
<form action="saveuser" method="post">

       Email: <input type="text" name="email"/> <br> <br>
       password:<input type="password" name="password"/> <br> <br>
       <input type="checkbox" value="Remember Me"/> remember me<br> <br>
       <input type="submit" value="Login"/>
       <br><br>

</form>

<br>
<a href="signup">Signup</a>  <a href="forgetpassword">Forget Password</a>

</body>
</html>