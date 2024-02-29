package classes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserPostQuery
 */
@WebServlet("/postquery")
public class UserPostQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		String Query=request.getParameter("query");
		String ans="No Answers Yet";
		String ansby="NA";
		HttpSession s=request.getSession();
		String postedby=s.getValue("username").toString();
		try{
			PreparedStatement ps=connection.prepareStatement("insert into fbquery values((select nvl(max(quaryid),0)+1 from fbquery),?,?,?,?,?)");
			ps.setString(1, Query);
			ps.setString(2, CURDATE());
			ps.setString(3,postedby );
			ps.setString(4, ans);
			ps.setString(5, ansby);
			ps.executeUpdate();
			System.out.println("query posted succesfully");
			response.sendRedirect("postquery.jsp?msg=your query posted successfully...");
		}
		catch (Exception e2) 
		{
			System.out.println(e2);
		}  
}
	private static String CURDATE() {
		int day, month, year;
	      int second, minute, hour;
	      GregorianCalendar date = new GregorianCalendar();
	      day = date.get(Calendar.DAY_OF_MONTH);
	      month = date.get(Calendar.MONTH);
	      year = date.get(Calendar.YEAR);
	
	     // System.out.println("Current date is  "+day+"/"+(month+1)+"/"+year);
	      
		return day+"/"+(month+1)+"/"+year;
	}

}
