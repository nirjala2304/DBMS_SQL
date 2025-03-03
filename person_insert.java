package JDBC_Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class person_insert {
	public static void main(String[] args) {
		try {
		//1.Register the driver class
		Class.forName("com.mysql.cj.jdbc.Driver");
		//2.create connection
		Connection con=null;
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anp_d0453","root","security");
		System.out.println(con);
        //3. create statement
		PreparedStatement ps=con.prepareStatement("insert into person values(?,?,?)");
		ps.setInt(1,4);
		ps.setString(2,"VIRAJ");
		ps.setInt(3,20);
		//4.execute queries
		int i=ps.executeUpdate();
        System.out.println(i+"records inserted sucessfully");
		//5.close connection
		con.close();
		}catch(Exception e){
		System.out.println(e);
		}
	}
}

