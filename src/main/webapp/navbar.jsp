<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navbar</title>
<style>
    nav{
        width: 100%;
        height: 20vh;
        display: flex;
        flex-direction: row;
        justify-content: space-around;
        align-items: center;
    }
    a{
        text-decoration: none;
    }
</style>
</head>
<body>
    <nav>
        <div class="left"></div>
        <div class="center"><h1>Welcome To Vehicle Management System</h1></div>
        <div class="right">
            <a href="./index.jsp">Home</a>
            <a href="./allVehicleList.jsp">All Vehicle Details</a>
            <a href="./addVehicle.jsp">Add Vehicle</a>
        </div>
    </nav>
	

</body>
</html>