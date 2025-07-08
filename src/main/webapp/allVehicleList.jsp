<%@page import="com.jsp.mvc.vms.entity.Vehicle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicle Details</title>
<style>
body{
	background-color: rgb(225, 225, 253);
}
.container {
	width: 60%;
	height: 60vh;
	margin: auto;
	text-align: center;
}

table {
	width: 100%;
}

th, td {
	padding: 10px;
}
a{
	text-decoration: none;
	
}
</style>
</head>
<body>
	<%
	@SuppressWarnings("unchecked")
	List<Vehicle> vehicles =(List<Vehicle>) request.getAttribute("vehicleList");
	%>
	<div class="container">
		<h1>Details Of All Vehicles</h1>
		<table border="">
			<tr>
				<th>Id</th>
				<th>Model</th>
				<th>Brand</th>
				<th>Type</th>
				<th>Price</th>
				<th>UPDATE</th>
				<th>Delete</th>
			</tr>
			<%
			for (Vehicle v : vehicles) {
			%>
			<tr>
				<td><%=v.getId()%></td>
				<td><%=v.getModel()%></td>
				<td><%=v.getBrand()%></td>
				<td><%=v.getType()%></td>
				<td><%=v.getPrice()%></td>
				<td><a href="find-by-id?id=<%=v.getId()%>">UPDATE</a></td>
				<td><a href="deleteVehicle?id=<%=v.getId()%>">DELETE</a></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>




</body>
</html>