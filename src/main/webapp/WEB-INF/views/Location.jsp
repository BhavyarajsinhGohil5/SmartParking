<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Location</h1>
<form action="savelocation" method="post">

       Location Name: <input type="text" name="locationName"/> <br> <br>
      <%---- LastName: <input type="text" name="lastName"/> <br> <br>
       Gender:Male<input type="radio" name="gender" value="male"/><br><br>
       		Female<input type="radio" name="gender" value="female" /><br><br>
       Email: <input type="email" name="email"/> <br> <br>
       Contact.no: <input type="tel" name="contactNum" maxlength="10" pattern="[0-9]{10}" required/> <br><br>
       password:<input type="password" name="password"/> <br> <br>
       Confirm Password: <input type="password" name="confirmpassword"/> <br><br>
       City: <input type="text" name="city"/> <br><br>
       <%----  Role: <input type="text" name="role"/> <br><br> -----%>
       
       <input type="submit" value="location"/>
       <br><br>

</form>

<a href="login">Login</a>

</body>
</html>