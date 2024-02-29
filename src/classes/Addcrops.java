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
 * Servlet implementation class Addcrops
 */
@WebServlet("/crop")
public class Addcrops extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		String statename=request.getParameter("statename");
		String cname=request.getParameter("cname");
		String distname=request.getParameter("distname");
		String season=request.getParameter("season");
		try{
			PreparedStatement ps=connection.prepareStatement("insert into fbcrop values(?,?,?,?)");
			ps.setString(4, cname);
			ps.setString(1, statename);
			ps.setString(2, distname);
			ps.setString(3, season);
			ps.executeUpdate();
			System.out.println("crop entry succesfull");
			response.sendRedirect("adminhome.jsp");
		}
		catch (Exception e2) 
		{
			System.out.println(e2);
		}  
}
}
