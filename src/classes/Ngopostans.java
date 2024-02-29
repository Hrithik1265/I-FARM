package classes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Ngopostans
 */
@WebServlet("/ngopostans")
public class Ngopostans extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		String ans1="";
		String ans2="No Answers Yet";
		String ans=request.getParameter("ans");
		System.out.println(ans);
		String ansby=request.getParameter("ansby");
		HttpSession s=request.getSession();
		String qid=s.getValue("qid").toString();
		String Query=s.getValue("query").toString();
		
		
		try{
			PreparedStatement pst=connection.prepareStatement("select ans from fbquery where quaryid='"+qid+"' ");
			ResultSet rs1=pst.executeQuery();
			//System.out.println("first stmt");
			
			//int count=1;
			while(rs1.next())
			{
				ans1=rs1.getString("ans");
				
			System.out.println("previous answer'"+ans1+"'");
			//count++;
			
			if(ans1.equals(ans2))
			{
				System.out.println("if condn");
				System.out.println("posted ans'"+ans+"'");
			PreparedStatement ps=connection.prepareStatement("update fbquery set ans=?,ansby=? where quaryid=? " );
	       ps.setString(1, ans);
			ps.setString(2, ansby);
			ps.setString(3, qid);
			ps.executeUpdate();
			//System.out.println("second stmt");
			System.out.println("query ans updated succesfully");
			response.sendRedirect("ngopostans.jsp?msg=ur ans updated");
			}
			else{
				System.out.println("else condn");
				PreparedStatement psmt=connection.prepareStatement("insert into fbpostansquery values(?,?,?,?,?) ");
				psmt.setString(1, qid);
				psmt.setString(2, Query);
				psmt.setString(3, ans);
				psmt.setString(4, ansby);
				psmt.setString(5, CURDATE());
				psmt.executeUpdate();
				System.out.println("query answer inserted succesfully");
				response.sendRedirect("ngopostans.jsp?msg=ur ans posted");
				
			}
			}
			
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
