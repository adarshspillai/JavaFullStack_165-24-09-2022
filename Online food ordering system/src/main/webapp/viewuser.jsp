<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="bean.UserDao,bean1.User,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<h1>User List</h1>

	<%
	List<User> list = UserDao.getAllRecords();
	request.setAttribute("list", list);
	%>

	<table border="1" width="90%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Date Of Birth</th>
			<th>Email</th>
			<th>Address</th>
			<th>Gender</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getDate()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getAddress()}</td>
			    <td>${u.getGender()}</td>
			</tr>
		</c:forEach>
	</table>
	<br />
	
	

	
</body>
</html>

