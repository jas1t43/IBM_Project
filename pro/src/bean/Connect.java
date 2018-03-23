package bean;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect {
private static Connection con=null;
	
	static{
		try{
			System.out.println("1");
			Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");
	System.out.println("2");
		}
		catch(Exception e){
			System.out.println("3");	
			e.printStackTrace();
		}
		
		
	}
	
	public static Connection getcon(){
		
		return con;
	}
	
	
}
