<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method = "post" action = "editBoughtCarsServlet">
<table>
<c:forEach items="${requestScope.allCars}" var="currentitem">
<tr>
	<td><input type="radio" name="id" value="${currentitem.id}"></td>
	<td>${currentitem.make}</td>
	<td>${currentitem.model}</td>
	<td>${currentitem.year}</td>
	</tr>
</c:forEach>
</table>
<input type = "submit" value = "Edit Selected Car" name="doThisToCar">
<input type = "submit" value = "Delete Selected Car" name="doThisToCar">
<input type = "submit" value = "Add New Car" name="doThisToCar">
</form>
</body>
</html>