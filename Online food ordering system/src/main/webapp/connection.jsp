

<%@ page import="java.sql.*,java.util.*"%>
<%

if(session.getAttribute("session")!=null){
	response.sendRedirect("home_user.jsp");
}


%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","");
      if(request.getParameter("btn_login")!=null){
		String dbemail,dbpassword;
		String email,password;
		email=request.getParameter("email");
		password=request.getParameter("password");
		
		PreparedStatement pstmt=null;
		
		pstmt=con.prepareStatement("select * from user2 where email=? AND password=?");
		pstmt.setString(1,email);
		pstmt.setString(2,password);
		
		
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			dbemail=rs.getString("email");
			dbpassword=rs.getString("password");
			
			if(email.equals(dbemail) && password.equals(dbpassword) ){
				session.setAttribute("session", dbemail);
				response.sendRedirect("home_user.jsp");
			}
			
			
		}
		else{
			request.setAttribute("errorMsg", "invalid email or password");
			RequestDispatcher rd = request.getRequestDispatcher("/login_user.jsp");
			rd.forward(request, response);
		}
		con.close();
	}
}
catch(Exception e){
	out.println(e);
}






%>



