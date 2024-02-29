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

import org.apache.catalina.connector.Request;
import org.apache.jasper.tagplugins.jstl.core.Out;

/**
 * Servlet implementation class Changepassword
 */
@WebServlet("/changepwd")
public class Changepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String pass="";
	
       String name=request.getParameter("name");
	String OldPassword = request.getParameter("OldPassword");
	String Newpass = request.getParameter("newpassword");
	String conpass = request.getParameter("conpassword");
	System.out.println(name+OldPassword+Newpass+ conpass);
	Connection connection=DbConnection.getConnection();
	try
	{
		PreparedStatement pst=connection.prepareStatement("select loginname,password from fbregistration where password='"+ OldPassword+"' and loginname='"+name+"'");
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
			 pass = rs.getString("password");
			 System.out.println(pass);
		}
		if(Newpass.equals(conpass))
		{
			if (pass.equals(OldPassword))
			{
		PreparedStatement ps=connection.prepareStatement("update fbregistration set password='"+ Newpass+"' where loginname='"+name+"'" );
		ps.executeUpdate();
		System.out.println("password set successfully");
		response.sendRedirect("changepassword.jsp?changepassword1=password set successfully");
		ps.close();
		//connection.close();
		     } 
			else 
			{
				
			  
		      response.sendRedirect("changepassword.jsp?changepassword=Old Password doesn't match");
		    }
		}
		
	}
	catch (Exception e2) 
	{
		System.out.println(e2);
	}  
	
	}
}
