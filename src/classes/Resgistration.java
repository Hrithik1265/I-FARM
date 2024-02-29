package classes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.ws.api.ha.StickyFeature;

/**
 * Servlet implementation class Resgistration
 */
@WebServlet("/resgistration")
public class Resgistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		String  firstname=request.getParameter("firstname");
		String  lastname=request.getParameter("lastname");
		String  bdate=request.getParameter("bdate");
		String  statename=request.getParameter("statename");
		String  city=request.getParameter("city");
		String  country=request.getParameter("country");
		String  email=request.getParameter("email");
		String  loginname=request.getParameter("loginname");
		String  password=request.getParameter("password");
		String  squest=request.getParameter("squest");
		
		String  sanswer=request.getParameter("sanswer");
		          
		
		
			
		  
		
		try{  
			
			PreparedStatement ps=connection.prepareStatement("insert into fbregistration values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, bdate);
			ps.setString(4, statename);
			ps.setString(5, city);
			ps.setString(6, country);
			ps.setString(7, email);
			ps.setString(8, loginname);
			ps.setString(9, password);
			ps.setString(10,squest);
			
			ps.setString(11,sanswer);
			ps.executeUpdate();
			
			response.sendRedirect("login.jsp?msg=added successfully");
		 
		}
		catch (Exception e2) 
		{
			System.out.println(e2);
		}  

}

}
