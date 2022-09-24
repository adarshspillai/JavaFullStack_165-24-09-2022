package bean;
import java.sql.*;
import java.util.ArrayList;  
import java.util.List;  
import bean1.Restaurant;



public class ResDao {
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
public static int save(Restaurant u) {
	int status=0;
	try {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into rest(name,password,email,location,address)value(?,?,?,?,?)");
		ps.setString(1,u.getName());
		ps.setString(2,u.getPassword());
		ps.setString(3,u.getEmail());
		ps.setString(4,u.getLocation());
		ps.setString(5,u.getAddress());
       	status=ps.executeUpdate();
	}catch (Exception e) {
		System.out.println(e);
	}
	return status;
}
public static int update(Restaurant u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update rest set name=?,password=?,email=?,location=?,address=? where id=?");  
        ps.setString(1,u.getName());  
        ps.setString(2,u.getPassword());  
        ps.setString(3,u.getEmail());  
        ps.setString(4,u.getLocation());  
        ps.setString(5,u.getAddress()); 
        ps.setInt(6,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(Restaurant u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from rest where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<Restaurant> getAllRecords(){  
    List<Restaurant> list=new ArrayList<Restaurant>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from rest");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            Restaurant u=new Restaurant();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
            u.setPassword(rs.getString("password"));  
            u.setEmail(rs.getString("email"));  
            u.setLocation(rs.getString("location"));  
            u.setAddress(rs.getString("address"));  
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static Restaurant getRecordById(int id){  
    Restaurant u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from register where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new Restaurant();  
            u.setId(rs.getInt("id"));  
            u.setName(rs.getString("name"));  
            u.setPassword(rs.getString("password"));  
            u.setEmail(rs.getString("email"));  
            u.setLocation(rs.getString("location"));  
            u.setAddress(rs.getString("address"));
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  

