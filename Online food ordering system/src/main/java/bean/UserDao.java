package bean;
import java.sql.Connection;


import java.sql.*;
import java.util.ArrayList;  
import java.util.List;  
import bean1.User;


public class UserDao {
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
public static int save(User u) {
	int status=0;
	try {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into user2(name,password,email,dob,address,gender)value(?,?,?,?,?,?)");
		ps.setString(1,u.getName());
		ps.setString(2,u.getPassword());
		ps.setString(3,u.getEmail());
		ps.setString(4,u.getDate());
		ps.setString(5,u.getAddress());
		ps.setString(6,u.getGender());

		status=ps.executeUpdate();
	}catch (Exception e) {
		System.out.println(e);
	}
	return status;
}
public static int update(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update user2 set name=?,password=?,email=?,dob=?,address=?,gender=? where id=?");  
        ps.setString(1,u.getName());  
        ps.setString(2,u.getPassword());  
        ps.setString(3,u.getEmail());  
        ps.setString(4,u.getDate());  
        ps.setString(5,u.getAddress());  
        ps.setString(6,u.getGender());  
        ps.setInt(6,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from user2 where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<User> getAllRecords(){  
    List<User> list=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from user2");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
            u.setPassword(rs.getString("password"));  
            u.setEmail(rs.getString("email"));  
            u.setDate(rs.getString("dob"));  
            u.setAddress(rs.getString("address")); 
            u.setGender(rs.getString("gender")); 
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static User getRecordById(int id){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from register where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
            u.setPassword(rs.getString("password"));  
            u.setEmail(rs.getString("email"));  
            u.setDate(rs.getString("dob"));  
            u.setAddress(rs.getString("address"));
            u.setGender(rs.getString("gender"));
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  
