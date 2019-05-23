<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Recipe</title>
</head>
<body>
<table border="1" align="center">

	<tr > <td colspan="2"><h1>Enter Recipe details</h1></td></tr>
	<f:form method="POST" action="getRecipeData" modelAttribute="f">

<tr><td>Recipe Name:</td> 
<td><f:input path="name" />
		<f:errors path="name" style="color:red" />
		
		</td>
		</tr>
 <tr><td>Recipe Ingredients:</td> 
<td><f:input path="ingredients_recipe" />
		<f:errors path="ingredients_recipe" style="color:red" />
		</td>
<tr><td>Recipe Time to prepare: </td>
<td><f:input path="time_To_Prepare" />
		<f:errors path="time_To_Prepare" style="color:red" />
		</td>

<tr><td>Recipe Category:</td>
<td><f:select path="category_recipe">
			<option disabled selected>Select Category</option>
			<c:forEach items="${clist}" var="course">
				<option>
					<c:out value="${course}"></c:out>
				</option>
			</c:forEach>
		</f:select></td>
<tr><td>Recipe Procedure:</td>
<td><f:textarea path="procedure_recipe" />
		<f:errors path="procedure_recipe" style="color:red" />
		
</td>
		<tr><td colspan="2" align="center"><input type="submit" value="CONFIRM YOUR ORDER" /></td></tr>


	</f:form>
</table>


</body>
</html>