<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>login_admin</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<style type="text/css">
body{
background:url('./image/admin.jpg');
height: 100vh;
background-repeat: no-repeat;
background-size: cover;
}
.center{
	position: absolute;
	top: 50%;
	left: 50%;
	transform:translate(-50%,-50%);
	width: 400px;
	border-radius: 10px;
	background: #a6a39a;
	
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





</style>

<script type="text/javascript">


function validateform(){
	var username=document.myform.username.value;  
	var password=document.myform.password.value;
	
	if (username=="admin" && password=="admin123"){  
		  alert("Succcessfully LoggedIn");  
		
	}else {
		alert("Incorrect username or password");
		return false;
		}
	}














</script>





</head>
<body>
<div class="center">
<form action="admin home.jsp " method="post" name="myform" onsubmit="return validateform()">
<div class="txt_field">
<input type="text" name="username">
<label>Username</label>

</div>
<div class="txt_field">
<input type="password" name="password">
<label>Password</label>

</div>
<div >
<button class="btn btn-primary btn-block">LogIn</button>


</div>
</form>
</div>

<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>