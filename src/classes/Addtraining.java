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
 * Servlet implementation class Addtraining
 */
@WebServlet("/addtraining")
public class Addtraining extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		String title=request.getParameter("title");
		String desc=request.getParameter("desc");
		String schdule=request.getParameter("schdule");
		String status=request.getParameter("status");
		try{
			PreparedStatement ps=connection.prepareStatement("insert into fbtraining values((select nvl(max(tid),0)+1 from fbtraining),?,?,?,?)");
			ps.setString(1, title);
			ps.setString(2, desc);
			ps.setString(3, schdule);
			ps.setString(4, status);
			ps.executeUpdate();
			System.out.println("training entry succesfull");
			response.sendRedirect("NGOhome.jsp");
		}
		catch (Exception e2) 
		{
			System.out.println(e2);
		}  
}

}
