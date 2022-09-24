<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bean.ResDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="bean1.Restaurant"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<% 
int i=ResDao.save(u);
if(i>0){
	response.sendRedirect("addrest-success.jsp");
}else{
	response.sendRedirect("addrest-error.jsp");
}


%>


</body>
</html>