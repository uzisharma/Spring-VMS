<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Insert Vehicle Details</h1>
	<form action="add-vehicle" method="post">
		<input type="text" name="model" id="modelId"><br>
		<input type="text" name="brand" id="brandId"><br>
		<input type="text" name="type" id="typeId"><br>
		<input type="number" name="price" id="priceId"><br>
		<input type="submit" value="Add Vehicle">		
	</form>
</body>
</html>