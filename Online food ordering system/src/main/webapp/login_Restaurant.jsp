<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>login_restaurant</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

	<script type="text/javascript">
	function validateform(){  
		var email_valid = /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/;
		var email = document.getElementById("email");
		if (!email_valid.test(email.value) || email.value == "") {
			alert("Enter valid email..!")
			return false;
			} 
		var password=document.myform.password.value;  
		  
		  }  
		  
		
</script>
	
	<style type="text/css">
	
	
	.center{
	position: absolute;
	top: 50%;
	left: 50%;
	transform:translate(-50%,-50%);
	width: 400px;
	border-radius: 10px;
	background: transparent;
	
}
body{
	background-image: url('./image/res.jpg');
	height:100vh;
	background-repeat: no-repeat;
	background-size: cover;

}
.center form{
	padding: 10px 50px;
	box-sizing: border-box;
}
form .txt_field{
	position: relative;
	
	margin: 30px 0;
	
}
.txt_field input{
    
	width:100%;
	padding: 0 5px;
	height: 40px;
	
	
}
label{
color: white;
 }
p{
color: white;
}

	
	
	</style>

</head>
<body>
<div class="center">
<p style="color: white;">
<%
				if (request.getAttribute("errorMsg") != null) {
					out.println(request.getAttribute("errorMsg"));
				}
				%>
				</p>
<form action="rest_connection.jsp" method="post" onsubmit="return validateform()" name="myform">
<div class="txt_field">
<input type="text" name="email" id="email">
<label>Restaurant Email</label>

</div>
<div class="txt_field">
<input type="password"name="password" id="password">
<label>Password</label>

</div>
<div class="text-left">
<button class="btn btn-primary"name="btn_login1" value="login">LogIn</button>


</div>
<div class="text-right">
<p>Don't have an Account?</p>
<a class="btn btn-success" href="Register_restaurant.jsp">SignUp</a>


</div>




</form>


</div>





<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>

</body>
</html>