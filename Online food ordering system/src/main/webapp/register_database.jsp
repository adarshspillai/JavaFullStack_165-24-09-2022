
<%@ page import="java.sql.*,java.util.*"%>
<%
	if (session.getAttribute("session") != null) {
		response.sendRedirect("home_user.jsp");
	}
%>
<%
	try {
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","");
		if (request.getParameter("btn_register") != null) {
			String name, password,date,email,address,gender;
			name=request.getParameter("name");
			password=request.getParameter("password");
			date=request.getParameter("date");
			email=request.getParameter("email");
			address=request.getParameter("address");
			gender=request.getParameter("gender");
			
			PreparedStatement pstmt=null;
			
			pstmt=con.prepareStatement("insert into user2(name, password,dob,email,address,gender)values(?,?,?,?,?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, password);
			pstmt.setString(3, date);
			pstmt.setString(4, email);
			pstmt.setString(5, address);
			pstmt.setString(6, gender);
			pstmt.executeUpdate();
			
			request.setAttribute("successMsg", "Register Sucessfully...! Please login");
			RequestDispatcher rd = request.getRequestDispatcher("/login_user.jsp");
			rd.forward(request, response);
			con.close();
		}
		}
	catch(Exception e){
		out.println(e);
	}

	%>

	
	
	
	
		
			

