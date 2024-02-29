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
 * Servlet implementation class Sendmessage
 */
@WebServlet("/sendmsg")
public class Sendmessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

	Connection connection=DbConnection.getConnection();
	String sub=request.getParameter("sub");
	String msgbody=request.getParameter("msgbody");
	String sendto=request.getParameter("sendto");
	HttpSession s=request.getSession();
	String name=s.getValue("username").toString();
	//String name="name";
	try{
		PreparedStatement ps=connection.prepareStatement("insert into fbmessage values((select nvl(max(msgid),0)+1 from fbmessage),?,?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,  sub);
		ps.setString(3, msgbody);
		ps.setString(4, CURDATE());
		ps.setString(5, sendto);
		
		ps.executeUpdate();
		System.out.println("entry succesfull");
		response.sendRedirect("userhome.jsp");
	}
	catch (Exception e2) 
	{
		System.out.println(e2);
	}  
}
private static String CURDATE() {
	int day, month, year;
      //int second, minute, hour;
      GregorianCalendar date = new GregorianCalendar();
      day = date.get(Calendar.DAY_OF_MONTH);
      month = date.get(Calendar.MONTH);
      year = date.get(Calendar.YEAR);

      System.out.println("Current date is  "+day+"/"+(month+1)+"/"+year);
      
	return day+"/"+(month+1)+"/"+year;
}
}
