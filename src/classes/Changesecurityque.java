package classes;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Changesecurityque
 */
@WebServlet("/sque")
public class Changesecurityque extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String nsque="";
		String sanss="";
	
       String name=request.getParameter("name");
	String osque = request.getParameter("squest");
	String nsquest = request.getParameter("nsquest");
	String sans = request.getParameter("sanswer");
	String nsans = request.getParameter("nsanswer");
	System.out.println(name+osque+nsquest+sans+nsans);
	Connection connection=DbConnection.getConnection();
	try
	{
		PreparedStatement pst=connection.prepareStatement("select secreatquestion,secreatans  from fbregistration where loginname='"+name+"'");
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
			nsque= rs.getString("secreatquestion");
			sanss= rs.getString("secreatans");
			 System.out.println("secque'"+nsque+"'secans'"+sanss+"'");
		}
		if(nsque.equals(osque) && sanss.equals(sans))
		{
			
		PreparedStatement ps=connection.prepareStatement("update fbregistration set secreatquestion='"+ nsquest+"', secreatans='"+ nsans+"' where loginname='"+name+"'" );
		ps.executeUpdate();
		System.out.println("security question set successfully");
		response.sendRedirect("changesecurityque.jsp?changesecurityque1=security question changed successfully");
		ps.close();
		//connection.close()
		     } 
			else 
			{
				System.out.println("failed");
			  
				response.sendRedirect("changesecurityque.jsp?changesecurityque=old security question or secreat answer doesnt match");
				    }
		
		
	}
	catch (Exception e2) 
	{
		System.out.println(e2);
	}  
	
	}
}
