<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="bean.ResDao,bean1.Restaurant,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<h1>Restaurant List</h1>

	<%
	List<Restaurant> list = ResDao.getAllRecords();
	request.setAttribute("list", list);
	%>






	<table border="1" width="90%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Location</th>
			<th>Address</th>
	
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.location}</td>
				<td>${u.getAddress()}</td>
			
			</tr>
		</c:forEach>
	</table>

</body>
</html>

