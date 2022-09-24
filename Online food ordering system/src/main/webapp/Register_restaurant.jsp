<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register_restaurant</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script type="text/javascript">
function validate(){
	var name_valid = /^[a-z A-Z]+$/;
	var password_valid = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,12}$/;
	var email_valid = /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/;
	

	var name = document.getElementById("name");
	var password = document.getElementById("password");
	var email = document.getElementById("email");
    var location = document.getElementById("location");
    var address = document.getElementById("address");
	
if (!name_valid.test(name.value) || name.value == "") {
	alert("Enter your Name, alphabets only..!");
	let n=0;
	name.focus();
	return false;
}else{
	n=1;
}
if (!password_valid.test(password.value) || password.value == "") {
	alert("Password should contain atleast 6 character,1 capital,small letter,number&special character");
	let p=0;
	password.focus();
    return false;
}else{
	p=1;
}
var password=document.myform.password.value;
var password2=document.myform.password2.value;

if(password != password2) {
		alert("password must be same");
		let cp=0;
		return false;
	}else{
		cp=1;
	}

if (!email_valid.test(email.value) || email.value == "") {
	alert("Enter valid Email..!")
	let e=0;
	return false;
	}else{
		e=1;
	}
if (location.value == null || location.value == "") {
	alert("Select your Location..!");
	let b=0;
	return false;
	}else{
		b=1;
	}

		if (address.value == null || address.value == "") {
	alert("Select a valid Address!");
	let a=0;
	return false;
	}else{
		a=1;
	}
		if(n==1 && p==1 && cp==1 && e==1 && b==1 && a==1){
			alert("Successfully registered");
			return true;
		}else{
			alert("Registration not successfull!!!")
			return false;
		}

		}



   </script>
<style type="text/css">
body{
background: #790947;
}
div.form{
	background:gray;
	width: 100%;
	padding: 10px 20px;
	border-radius: 10px;
}
label{
	color:white;
	width: 140px;
	display: inline-block;
	margin: 0.2cm;
	font-size: 16px;
	font-weight: bold;
}
.center{
	position: absolute;
	top: 50%;
	left: 50%;
	transform:translate(-50%,-50%);
	width: 400px;
	border-radius: 10px;
	
}
p{
color:white;}
.l1{
color: white;}

</style>

</head>
<body>

<div class="center">
<p style="color:black;">
<%

if(request.getAttribute("successMsg")!=null){
	out.println(request.getAttribute("successMsg"));
}

%>
</p>

		<div class="form">
			<form action="rest_database.jsp" method="post" name="myform" onsubmit="return validate()">
				<label>Restaurant Name</label> <input type="text" name="name" id="name" value="" placeholder="Enter Restaurant Name"><br> 
					<label>Password</label>
			<input	type="password" name="password"  id="password" ><br>
				<label> Confirm Password</label>
				<input type="password"name="password2" id="password2"><br> 
				<label>Email</label>
				<input type="text" name="email" id="email"
					placeholder="Enter Restaurant Email"><br>
				<label class="l1">Location</label> <select name="location"
						id="location" >
						<option value="">Select</option>
						<option value="Alappuzha">Alappuzha</option>
						<option value="Ernakulam">Ernakulam</option>
						<option value="Trissur">Trissur</option>
						<option value="Palakkad">Palakkad</option>
						<option value="Trivandrum">Trivandrum</option>
						<option value="Kollam">Kollam</option>
						<option value="Kozhikode">Kozhikode</option>
					</select>
				<br>
				<label for="address">Address</label>
				<textarea name="address" id="address" cols="30" rows="2"placeholder="Add Address"></textarea><br>			 
				<button class="btn btn-success btn-block" name="btn_rest" value="rest">Register</button>

			</form>

		</div>
	</div>





<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>

</body>
</html>
