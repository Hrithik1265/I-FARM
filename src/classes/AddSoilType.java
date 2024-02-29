package classes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.DbConnection;

/**
 * Servlet implementation class AddSoilType
 */
@WebServlet("/addsoiltype")
public class AddSoilType extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		
		          
		 
		String soilname=request.getParameter("soilname");
		
			
		  
		
		try{  
			
			PreparedStatement st=connection.prepareStatement("insert into soil_ident values((select nvl(max(soilcode),0)+1 from soil_ident),?)");
			//st.setString(1, soilcode);
			st.setString(1, soilname);
			int i=st.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("adminhome.jsp");
				System.out.println("soil added");
			}
		 
		}
		catch (Exception e2) 
		{
			System.out.println(e2);
		}  

}
}
