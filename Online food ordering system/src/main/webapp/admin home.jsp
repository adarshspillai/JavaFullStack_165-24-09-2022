<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
<style>

@charset "ISO-8859-1";
@charset "ISO-8859-1";
home{
	padding: 0;
	margin: 0;
	text-decoration: none;
	list-style: none;
	box-sizing: border-box;
	
}
body{
	font-family: montserrat;
}
nav{
	height: 80px;
	width: 100%;
	background: black;

}
label.logo{
	color: red;
	font-size: 35px;
	line-height: 80px;
	padding: 0 100px;
	font-weight: bold;
		
}
nav ul{
	
	float: right;
	margin-right: 20px;
}
nav ul li{
	display: inline-block;
	line-height: 80px;
	margin: 0 5px;
}
nav ul li a{
	
	color:red;
	font-size: 17px;
	padding:7px 13px;
	text-transform:3px;
	text-transform: uppercase;
}
nav ul a:hover{
	background-color: white;
}
.container{
		margin-top: 236px;
	
}

.c1{
	font-family: 'Dancing Script', cursive;
	font-size: 15px;
	color: white;
	
}
.w1{

position: absolute;
	top: 50%;
	left: 52%;
	transform:translate(-50%,-50%);
	width: 400px;
	border-radius: 10px;
	font-size: 46px;
	
   

	

}



</style>
</head>
<body>

<nav>
<ul>
<li class="active"><a href="viewuser.jsp">View User</a></li>
<li><a href="viewrest.jsp">View Restaurant</a></li>
<li><a href="viewfeedback.jsp">View Feedback</a></li>
<li><a href="#">Add Fooditems</a></li>
<li><a href="logout admin.jsp">Log Out</a></li>

</ul>

</nav>


<h6 class="w1">WELCOME ADMIN</h6>





	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
