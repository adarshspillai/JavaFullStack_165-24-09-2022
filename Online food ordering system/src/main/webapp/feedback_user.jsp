<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>feedback_user</title>


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	<style type="text/css">
	
	.c1{
	position: absolute;
	top: 50%;
	left: 50%;
	transform:translate(-50%,-50%);
	width:628px;
	border-radius:10px;
	background: aqua;
	text-align: center;

	
	}
.l1{
display:block;
padding-right: 4px;
margin-left: 222px;
}
	body{
	background: silver;
	
	}
	
	
	
	</style>
	
	<script type="text/javascript">

		function validateform(){  
			var name_valid = /^[a-z A-Z]+$/;
			var email_valid = /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/;
			var name = document.getElementById("name");
			var email = document.getElementById("email");
			var location = document.getElementById("location");
			var comments = document.getElementById("comments");
			if(name.value==null||name.value==""){
				alert("Name can't be Blank..!")
				let n=0;
				return false;
			}else{
				n=1;
			}
			if (!email_valid.test(email.value) || email.value == "") {
				alert("Enter valid email..!")
				let e=0;
				return false;
				} else{
					e=1;
				}
			if(location.value==null||location.value==""){
				alert("Select your Location..!")
				let l=0;
				return false;
			}else{
				l=1;
			}
			if(comments.value==null||comments.value==""){
				alert("Please enter your feedback..!")
				let c=0;
				return false;
			}else{
				c=1;
			}
             if(n==1 && e==1 && l==1 && c==1){
            	 alert("Thank you for your valuable feedback..!")
            	 return true;
             }else{
            	 alert("Sorry..feedback not registered..!")
            	 return false;
             }
	}
	
	
	
	</script>
</head>
<body>
<div class="c1 " >
<form  onsubmit="return validateform()" method="post"  name="myform" action="addfeedback.jsp">
<label>Name </label> <input type="text" class="l1"
 name="name" id="name">	<br> 
				
<label>Email:</label>
<input type="text" name="email" id="email"class="l1"><br>
<label>Location</label> <select name="location"
						id="location">
						<option value="">Select</option>
						<option value="Alappuzha">Alappuzha</option>
						<option value="Ernakulam">Ernakulam</option>
						<option value="Trissur">Trissur</option>
						<option value="Palakkad">Palakkad</option>
						<option value="Trivandrum">Trivandrum</option>
						<option value="Kollam">Kollam</option>
						<option value="Kozhikode">Kozhikode</option>
					</select>

<h3><b>Add Your Feedback</b></h3>
<label for="comments"><b>Further comments:</b></label>
<textarea rows="2" cols="30" id="comments" name="comments" placeholder="Enter your feedback here.."></textarea><br>

<button class="btn btn-success" >Submit</button>
<p><h4><b>Thank You Visit Again!!</b></h4></p>







</form>

</div>












</body>
</html>