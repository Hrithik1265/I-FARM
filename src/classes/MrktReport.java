package classes;
import java.util.Calendar;
import java.util.GregorianCalendar;

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

/**
 * Servlet implementation class MrktReport
 */
@ WebServlet("/marketreport")
public class MrktReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		String cropname=request.getParameter("cropname");
		String modelprice=request.getParameter("modelprice");
		String unitsofarrivals=request.getParameter("unitsofarrivals");
		String mrktarea=request.getParameter("mrktarea");
		String unitprice=request.getParameter("unitprice");
		String minprice=request.getParameter("minprice");
		String grade=request.getParameter("grade");
		String marketname=request.getParameter("marketname");
		String arrivals=request.getParameter("arrivals");
		String variety=request.getParameter("variety");
		String maxprice=request.getParameter("maxprice");
		//String arrivaldate=request.getParameter("arrivaldate");
		String date = CURDATE();
		String splits[] = date.split("/");
		
		try{
			PreparedStatement ps=connection.prepareStatement("insert into fbmrktreport(CROPNAME,MODELPRICE,UNITSOFARRIVALS,MARKETAREA,UNITPRICE,GRADE,MARKETNAME,ARRIVALS,VARIETY,MAXPRICE,ARRIVALDATE,MINPRICE,MONTH) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, cropname);
			ps.setString(2, modelprice);
			ps.setString(3, unitsofarrivals);
			ps.setString(4, mrktarea);
			ps.setString(5, unitprice);
			
			ps.setString(6, grade);
			ps.setString(7, marketname);
			ps.setString(8, arrivals);
			ps.setString(9, variety);
			ps.setString(10, maxprice);
			ps.setString(11, CURDATE());
			ps.setString(12, minprice);
			ps.setString(13, splits[1]);
			ps.executeUpdate();
			System.out.println("market report entry succesfull");
			response.sendRedirect("adminhome.jsp");
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

	      System.out.println("Current date is  "+day+"/"+(month+1)+"/"+year);
	      
		return day+"/"+(month+1)+"/"+year;
	}
}
