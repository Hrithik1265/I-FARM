package classes;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection 
{
	
	private static Connection con=null;
	
	public static Connection getConnection() 
	{
		
		try
		{
			if(con==null)
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
				
				System.out.println("connected");
				
					
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}

		return con;
		
		
	}
	

	
	

}
