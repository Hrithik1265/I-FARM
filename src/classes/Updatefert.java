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
import javax.websocket.Session;

/**
 * Servlet implementation class Updatefert
 */
@WebServlet("/updatefert")
public class Updatefert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection connection=DbConnection.getConnection();
		
		          
		 
		//String soilname=request.getParameter("soilname");
		//System.out.println(soilname);
		//String croptype=request.getParameter("type");
		//String crname=request.getParameter("c");
		//System.out.println(crname);
		String nitro=request.getParameter("nitrogen");
		String phosporus=request.getParameter("phosporous");
		String cofeecreamer=request.getParameter("coffee_cremer");
		String usefertacre=request.getParameter("fert_per_hector");
		String costfert=request.getParameter("cost_of_fert");
		String usefertyear=request.getParameter("use_fert_for_year");
		String usefertstate=request.getParameter("use_fert_for_state");
		String usefertcrops=request.getParameter("use_fert_for_crops");
			
		HttpSession s=request.getSession();
		String cname=s.getValue("cropname").toString();
	
		try{  
			
			PreparedStatement st=connection.prepareStatement("update fbfertilizer set nitrogen=?,phosporous=?,coffee_cremer=?,fert_per_hector=?,cost_of_fert=?,use_fert_for_year=?,use_fert_for_state=?,use_fert_for_crops=? where cropname='"+cname+"'");
			//st.setString(1, soilname);
			//st.setString(2, croptype);
			//st.setString(3, crname);
			st.setString(1, nitro);
			st.setString(2,phosporus);
			st.setString(3, cofeecreamer);
			st.setString(4, usefertacre);
			st.setString(5, costfert);
			st.setString(6, usefertyear);
			st.setString(7, usefertstate);
			st.setString(8, usefertcrops);
			
			int i=st.executeUpdate();
			if(i>0)
			{
				System.out.println("fertlizer  updated");
				response.sendRedirect("adminhome.jsp");
			}
		 
		}
		catch (Exception e2) 
		{
			System.out.println(e2);
		}  

}
}