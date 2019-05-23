<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body bgcolor="#C0C0C0">
<table border="1" align="center">
	<tr><th><h2>Login Page</h2></th></tr>

	<tr><td><f:form method="POST" action="operations" modelAttribute="admin">
User Name:
<f:input type="text" path="username" placeholder="username"/>
		<f:errors path="username"></f:errors>
		<br>
	</td></tr>
	
<tr><td>	
Password: 
<f:input type="password" path="password" placeholder="password"/>
		<f:errors path="password"></f:errors>
		<br></td></tr>

	<tr><td>	<input type="submit" value="Login"/></td></tr>
	<tr><td><a href=""> FORGOT PASSWORD...?</a></td></tr>
	
<tr><td> <img align="middle" src="file:///C:/Users/tikumbha/Desktop/foodLast/src/main/webapp/WEB-INF/view/recipe.jpg" /></td></tr>

</f:form>
</table>
</body>
</html>