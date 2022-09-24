<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>home page</title>
<link rel="stylesheet" type="text/css" href="./home.css">
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">



<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

</head>
<body>
<%
if(session.getAttribute("session")==null || session.getAttribute("session")==" "){
	response.sendRedirect("login_user.jsp");
}
%>

			<%=session.getAttribute("session")%>
	
<nav>
<label class="logo">Food Delivery</label>
<ul>
<li class="active"><a href="#">Home</a></li>
<li><a href="feedback_user.jsp">Feedback</a></li>
<li><a href="#">Contact Us</a></li>
<li><a href="viewmenu_user.jsp">View Menu</a></li>
<li><a href="logoutuser.jsp">Log Out</a></li>

</ul>

</nav>
<div class="container">
              <div class="row">
                <div class="col-md-10 col-lg-5 c1 ">
                    <h1>
                      Welcome To Food World...
                    </h1>
                    <p>
                      Order, Order Again and Keep Ordering!!    </p>
                      </div>
                      </div >
                      <a  class="btn btn-warning" href="viewmenu_user.jsp">Order Now</a>
                     <!--  <button type="submit" class="btn btn-warning" >Order Now</button> -->
                      </div>
                      
            

<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>

</body>
</html>