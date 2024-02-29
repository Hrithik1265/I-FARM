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
 * Servlet implementation class AddFert
 */
@WebServlet("/addfert")
public class AddFert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		
		          
		 
		String soilname=request.getParameter("soilname");
		String croptype=request.getParameter("type");
		System.out.println(croptype);
		String crname=request.getParameter("crname");
		String nitro=request.getParameter("nitro");
		String phosporus=request.getParameter("phosporus");
		String cofeecreamer=request.getParameter("cofeecreamer");
		String usefertacre=request.getParameter("usefertacre");
		String costfert=request.getParameter("costfert");
		String usefertyear=request.getParameter("usefertyear");
		String usefertstate=request.getParameter("usefertstate");
		String usefertcrops=request.getParameter("usefertcrops");
			
		  
		
		try{  
			
			PreparedStatement st=connection.prepareStatement("insert into fbfertilizer values(?,?,?,?,?,?,?,?,?,?,?)");
			st.setString(1, soilname);
			st.setString(2, croptype);
			st.setString(3, crname);
			st.setString(4, nitro);
			st.setString(5,phosporus);
			st.setString(6, cofeecreamer);
			st.setString(7, usefertacre);
			st.setString(8, costfert);
			st.setString(9, usefertyear);
			st.setString(10, usefertstate);
			st.setString(11, usefertcrops);
			
			int i=st.executeUpdate();
			if(i>0)
			{
				System.out.println("fertlizer  added");
				response.sendRedirect("adminhome.jsp");
			}
		 
		}
		catch (Exception e2) 
		{
			System.out.println(e2);
		}  

}
}
