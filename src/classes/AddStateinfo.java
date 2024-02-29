package classes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddStateinfo
 */
@WebServlet("/addstateinfo")
public class AddStateinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		
		          
		//String statecode=request.getParameter("statecode"); 
		String statename=request.getParameter("statename");
		String wcondn=request.getParameter("wcondn");
		
			
		  
		
		try{  
			
			PreparedStatement st=connection.prepareStatement("insert into stateinfo values((select nvl(max(statecode),0)+1 from stateinfo),?,?) ");
			//st.setString(1, statecode);
			st.setString(1, statename);
			st.setString(2, wcondn);
			int i=st.executeUpdate();
			 if(i>0)
			   {
			   	response.sendRedirect("adminhome.jsp");
			   	System.out.println("State Information added successfully");
			   }
			   
		 
		}
		catch (Exception e2) 
		{
			System.out.println(e2);
		}  

}

}
