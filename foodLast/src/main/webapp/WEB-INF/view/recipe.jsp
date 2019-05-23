<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RECIPE INFORMATION</title>
</head>
<body>

	<h1>RECIPE INFORMATION</h1>

	<table border=1>
		<tr>
			<th>RECIPE name</th>
			<th>RECIPE ingredients_recipe</th>
			<th>RECIPE time_To_Prepare</th>
			<th>RECIPE category_recipe</th>
			<th>RECIPE procedure_recipe</th>
		</tr>
	 	
			<c:forEach var="recipe" items="${tlist}">
			<tr>
				<td>${recipe.name}</td>
				<td>${recipe.ingredients_recipe}</td>
				<td>${recipe.time_To_Prepare}</td>
				<td>${recipe.category_recipe}</td>
				<td>${recipe.procedure_recipe}</td>
			</tr>
		</c:forEach>
		
		
	</table>
	<h2>Added Successfully</h2>

</body>
</html>