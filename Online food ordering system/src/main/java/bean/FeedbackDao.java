package bean;
import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;  
import java.util.List;  
import bean1.Feedback;


public class FeedbackDao {
	public static Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","");
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
public static int save(Feedback u) {
	int status=0;
	try {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into feedback1(name,email,location,comments)value(?,?,?,?)");
		ps.setString(1,u.getName());
		ps.setString(2,u.getEmail());
		ps.setString(3,u.getLocation());
		ps.setString(4,u.getComments());

		status=ps.executeUpdate();
	}catch (Exception e) {
		System.out.println(e);
	}
	return status;
}
public static int update(Feedback u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update feedback1 set name=?,email=?,location=?,comments=? where id=?");  
        ps.setString(1,u.getName());
		ps.setString(2,u.getEmail());
		ps.setString(3,u.getLocation());
		ps.setString(4,u.getComments());
        ps.setInt(5,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(Feedback u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from feedback1 where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<Feedback> getAllRecords(){  
    List<Feedback> list=new ArrayList<Feedback>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from feedback1");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            Feedback u=new Feedback();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
            u.setEmail(rs.getString("email"));  
            u.setLocation(rs.getString("location"));   
            u.setComments(rs.getString("comments")); 
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static Feedback getRecordById(int id){  
	Feedback u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from feedback1 where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new Feedback();
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
            u.setEmail(rs.getString("email"));  
            u.setLocation(rs.getString("location"));  
           u.setComments(rs.getString("comments")); 
           
            }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  
