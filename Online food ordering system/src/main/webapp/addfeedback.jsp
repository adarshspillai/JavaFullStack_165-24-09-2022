<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bean.FeedbackDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="bean1.Feedback"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<% 
int i=FeedbackDao.save(u);
if(i>0){
	response.sendRedirect("addfeedback-success.jsp");
}else{
	response.sendRedirect("addfeedback-error.jsp");
}


%>


</body>
</html>