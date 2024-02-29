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
 * Servlet implementation class Addmarketdetails
 */
@WebServlet("/market")
public class Addmarketdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
        
  Connection connection=DbConnection.getConnection();
   String statename=request.getParameter("statename");
   String distname=request.getParameter("distname");
   String market=request.getParameter("market");
   try{  
 PreparedStatement ps=connection.prepareStatement("insert into fbmarketdetails values(?,?,?)");
   ps.setString(1, statename);
   ps.setString(2, distname);
   ps.setString(3, market);
   int i=ps.executeUpdate();
   if(i>0)
   {
   	response.sendRedirect("adminhome.jsp");
   }
   }
   catch (Exception e2) 
	{
		System.out.println(e2);
	}  

   
	
}
}
