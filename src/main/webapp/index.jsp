
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">


.container{
	width: 40%;
	height: 60vh;
	margin: auto;
	background-color: rgb(194, 194, 233);
	text-align: center;
	border-radius: 3%;
	padding: 2% 3%;

}

.card{
	background-color: aqua;
	border-radius: 5%;
	width: 50%;
	height: auto;
	margin: 0 auto;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}

a{
	padding: 20px;
	border-radius: 15px;
	background-color: aliceblue;	
	margin: 10px;
	text-decoration: none; 
}

</style>

</head>
<body>
	<div class="container">
		<h1>Welcome To Vehicle Management System</h1>
		<div class="card">
			<a href="addVehicle.jsp">Click To Add Vehicle Into the DataBase</a>
			<a href="displayAllVehicle">Click To View All Vehicle</a>
		</div>
		<div class="back-button">
			<a href="index.js">Back</a>
		</div>
	</div>
</body>
</html>