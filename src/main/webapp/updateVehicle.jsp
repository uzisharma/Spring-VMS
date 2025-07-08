
<%@page import="com.jsp.mvc.vms.entity.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Vehicle vehicle = (Vehicle) request.getAttribute("vehicle");
	%>
		<h1>Insert Updated Vehicle Details</h1>
	<form action="update-vehicle" method="post">
		<input type="number" name="id" id="id"  value="<%= vehicle.getId() %>"><br>
		<input type="text" name="model" id="modelId"  value="<%= vehicle.getModel() %>"><br>
		<input type="text" name="brand" id="brandId"  value="<%= vehicle.getBrand() %>"><br>
		<input type="text" name="type" id="typeId" value="<%= vehicle.getType() %>"><br>
		<input type="number" name="price" id="priceId" value="<%= vehicle.getPrice() %>"><br>
		<input type="submit" value="Update Vehicle">		
	</form>
	
	
	
	

</body>
</html>