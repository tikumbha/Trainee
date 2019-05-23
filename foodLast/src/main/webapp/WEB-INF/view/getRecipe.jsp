<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
 <%@taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Recipe</title>
</head>
<body>
	<h1>Enter Recipe details</h1>
	<f:form method="POST" action="getRecipeDetails" modelAttribute="recipe">



Select category That you want:
<f:select path="category_recipe">
			<option disabled selected>Select Category</option>
			 <c:forEach items="${clist}" var="course">
				<option>
					<c:out value="${course}"></c:out>
				</option>
			</c:forEach> 
		</f:select>
		<br>
		<input type="submit" value="Get Recipe" />

	</f:form>



</body>
</html>