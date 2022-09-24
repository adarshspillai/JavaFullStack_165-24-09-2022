<%@  page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>registerform_user</title>
<link rel="stylesheet" type="text/css" href="./reg.css">

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
    var dob = document.getElementById("dob");
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
if (dob.value == null || dob.value == "") {
	alert("Select your DOB..!");
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

		
</head>
<body class="c1">


<p style="color:black;">
<%

if(request.getAttribute("successMsg")!=null){
	out.println(request.getAttribute("successMsg"));
	
}

%>
</p>
<br>

	<div class="center">
		<div class="form">

			<form name="myform" method="post" onsubmit="return validate()"
				 action="register_database.jsp">
				<label>Name </label> <input type="text"
						placeholder="First Name" name="name" id="name">	<br> 
				<label>Password</label> <input
						type="password" name="password" id="password"><br>
		<label> Confirm Password</label>
				 <input type="password"
					name="password2" id="password2"><br> 
					<label>Email</label>
				<input type="text" name="email" id="email"
					placeholder="Enter Email"><br>
				<label for="dob"> Date of birth</label>
				 <input type="date" id="dob" name="date" min='1950-01-01'
max='2004-12-30'><br>
					 <label for="address">Address</label>
				<textarea name="address" id="address" cols="30" rows="2"
					placeholder="Add Address"></textarea>
				<br>
				 <label>Gender</label> 
				 <input type="radio" value="Male"
					name="gender" id="gender" checked="checked">Male 
					<input type="radio"
					value="Female" name="gender" id="gender">Female
					<input type="radio"
					value="other" name="gender" id="gender">Other<br>
				<button class="btn btn-success btn-block" name="btn_register" value="register">Register
			</form>

		</div>
	</div>
</body>
</html>