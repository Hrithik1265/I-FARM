package classes;

import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class Mrktwisedaily
 */
@WebServlet("/mrktwisedaily")
public class Mrktwisedaily extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		try{
			
  			System.out.println(CURDATE());
  			String abc=CURDATE();
  			
  				HttpSession s = request.getSession();
  				
                s.putValue("ABC", abc);
                System.out.println("true");
  				
 			response.sendRedirect("marketwisedaily.jsp");
			
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
