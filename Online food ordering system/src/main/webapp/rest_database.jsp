
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
		if (request.getParameter("btn_rest") != null) {
			String name,password,email,location,address;
			name=request.getParameter("name");
			password=request.getParameter("password");
			email=request.getParameter("email");
			location=request.getParameter("location");
			address=request.getParameter("address");
			
			
			PreparedStatement pstmt=null;
			
			pstmt=con.prepareStatement("insert into rest(name,password,email,location,address)values(?,?,?,?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, password);
			pstmt.setString(3, email);
			pstmt.setString(4, location);
			pstmt.setString(5, address);
	
			pstmt.executeUpdate();
			
			request.setAttribute("successMsg", "Register Sucessfully...! Please login");
			RequestDispatcher rd = request.getRequestDispatcher("/login_Restaurant.jsp");
			rd.forward(request, response);
			con.close();
		}
		}
	catch(Exception e){
		out.println(e);
	}
	%>
		
			

