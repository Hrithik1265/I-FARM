package classes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Reqtraining
 */
@WebServlet("/reqtraining")
public class Reqtraining extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		String title=request.getParameter("title");
		String desc=request.getParameter("desc");
		
		try{
			PreparedStatement ps=connection.prepareStatement("insert into fbreqtraining values(?,?)");
			ps.setString(1, title);
			ps.setString(2, desc);
			ps.executeUpdate();
			System.out.println("Request  for training sent succesfull");
			response.sendRedirect("training.jsp?msg=request sent successfull");
		}
		catch (Exception e2) 
		{
			System.out.println(e2);
		}  
}


}
