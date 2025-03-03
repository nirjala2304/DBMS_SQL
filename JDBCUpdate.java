package JDBC_Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCUpdate {
	public static void main(String[] args) {
		try {
		//1.Register the driver class
		Class.forName("com.mysql.cj.jdbc.Driver");
		//2.create connection
		Connection con=null;
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anp_d0453","root","security");
		System.out.println(con);
		//3. create statement
		PreparedStatement ps=con.prepareStatement("update employee set name=? where emp_id=?");
		ps.setString(1,"VIRAJ");
		ps.setInt(2,1);
		//ps.setString(2,"VIRAJ");
		//ps.setInt(3,2);
		//4.execute queries
		int i=ps.executeUpdate();
	    System.out.println(i+"records update sucessfully");
		//5.close connection
		con.close();
		}catch(Exception e){
		System.out.println(e);
		}
	}
	

}



