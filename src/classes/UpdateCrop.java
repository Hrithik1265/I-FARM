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
 * Servlet implementation class UpdateCrop
 */
@ WebServlet("/updatecrop")
public class UpdateCrop extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		
		          
		
		String crname=request.getParameter("cropname");
		String season=request.getParameter("season");
		
			
		  
		
		try{  
			
			PreparedStatement st=connection.prepareStatement("update fbcrop set cropname=?,season=?");
			
			st.setString(1, crname);
			st.setString(2, season);
			
			
			int i=st.executeUpdate();
			if(i>0)
			{
				System.out.println("crop info  updated");
				response.sendRedirect("adminhome.jsp");
			}
		 
		}
		catch (Exception e2) 
		{
			System.out.println(e2);
		}  

}
	}
