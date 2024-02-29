<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="classes.DbConnection" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  <meta name="verify-v1" content="bGDK2jk+Vhn+Kk2NrZFue5EbYn1Fed4v/Ej+U2bg7wc=">
<script type="text/javascript" src="scripts/project.js"></script>

    <title>Agriculture Industry - Agricultural Products,Agricultural Product
    Manufacturers,Exporters,Suppliers,Importers</title>
    <meta name="Description" content="Agriculture Industry - Guide to the agriculture industry in India, providing listings of agri produce manufacturers, exporters, suppliers, importers, buy sell trade leads, agro business catalogs, EXIM policies, agro industry statistics, agriculture pricing policies and national seeds policy of India.">
    <meta name="Keywords" content="agriculture industry, agriculture product manufacturers, agro product exporters, agro industry guide, agro industry guide, indian agriculture industry agro industry directory, agro business catalogs, agro industry statistics, agriculture pricing policies, national seeds policy, agri industry india, agri product exporters, agro product suppliers, india agriculture, agricultural commodity exporters, agro product manufacturers and exporters, india">
    <link href="ABC/agrostyle.css" rel="stylesheet" type="text/css">

<script src="ABC/script.js" language="javascript"></script>
  </head><body leftmargin="0" topmargin="0" bgcolor="#c1DDD7" marginheight="0" marginwidth="0">
    <div style="position: absolute; left: 7px; top: 49px; font-family: arial; font-size: 27px; color: rgb(51, 102, 0);" class="tlt"><a href="#"><b>Farmers Buddy</b></a></div>
    <div style="position: absolute; left: 241px; top: 285px; padding-right: 10px;" align="justify"><font class="ag-text-gr">.</font></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td background="ABC/top-td-bg.jpg" bgcolor="#90c82f"><a href="#"><img src="ABC/imart-agro.gif" alt="IndiaMART - Source &gt; Supply &gt; Grow" width="119" align="right" border="0" height="88" hspace="0"></a><a href="#"><img src="ABC/indian-agro-industry.gif" alt="Agriculture Industry - Agriculture Product Manufacturers,Exporters,Suppliers,Importers,Agro Industry Guide" width="306" align="left" border="0" height="88" hspace="0"></a><img src="ABC/rice-wheat-corn-img.gif" alt="indian agro portal" width="110" height="88"><img src="ABC/dals.gif" alt="agro industry catalogs" width="107" height="88"><img src="ABC/fruits-vegetables.gif" alt="agriculture product manufacturers" width="107" height="88"></td>
      </tr>
      <tr>
        <td background="ABC/d-bg.gif" bgcolor="#ffffc0"><img src="ABC/corn-bot.gif" width="50" height="15"><img src="ABC/agro-punch.gif" alt="Guide To Indian Agriculture Sector" width="366" height="15"></td>
      </tr>
      <tr>
        <td bgcolor="#336600"><img src="ABC/corn-bot1.gif" width="50" height="18"><img src="ABC/sanjeev.gif" width="34" height="18"><img src="ABC/grad.gif" width="332" height="18"><jsp:include page="mymenu.html"/></td>
      </tr>
    </tbody></table>
      <table><tr><td>
    <table width="238" valign="top" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr bgcolor="green">
        <td width="208"><img src="ABC/paddy.jpg" alt="agro directory, indian agriculture product manufacturers, exporters, suppliers and importers guide" width="208" height="148"><br>
        <img src="ABC/farms.jpg" alt="indian agriculture industry, agro industry guide, agro industry portal" width="208" height="93"></td>
        <td width="30"><img src="ABC/zero.gif" width="30" height="1"></td>
      </tr>
      <tr bgcolor="green">
        <td width="208">
       </td>
        <td width="30"></td>
      </tr>
      <tr bgcolor="green">
        <td width="208" align="center"><img src="ABC/indian-farmer.jpg" alt="Indian Farmer" width="208" height="145"><br>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tbody><tr>
            <td height="3"></td>
          </tr>
       
          <tr>
            <td bgcolor="#336600">
            </td>
          </tr>
        </tbody></table>
        </td>
        <td width="30"></td>
      </tr>
    </tbody></table></td><td valign="top">
    
    
    <table align=center width="565" height="339">
    <tr align="center"><td bgcolor="#c1DDD7">
    
   <br>

 <form action="./addfert" method="post">
  <center><h3>ADD FERTILIZER INFORMATION</h3></center>
  <table border=2 cellspacing=3 color="red">
   <% 
   Connection connection=DbConnection.getConnection();
   PreparedStatement ps=connection.prepareStatement("select soilname from soil_ident ");
   ResultSet rs=ps.executeQuery();
     
   %>
   
   <tr><td><b>Soil Name</b></td><td><select name="soilname">
   <option>SELECT</option>
   <%
   while(rs.next())
   {
	   String soilname=rs.getString("soilname");
	  
   %>
   
   
     <option value="<%=rs.getString("soilname") %>"><%=rs.getString("soilname") %></option>
     <%
   }
    %>
   </select></td></tr>
  <tr><td><b>Type</b></td><td><select name="type">
  <option>SELECT</option>
    <option value="herb">Herb</option>
  <option value="Vegetable">Vegetable</option>
  </select></td>
  </tr>
 


  <%
  
   PreparedStatement pst=connection.prepareStatement("select cropname from fbcrop ");
   ResultSet rs1=pst.executeQuery();
     %>
   
   <tr><td><b>CropName</b></td><td><select name="crname">
   <option>SELECT</option>
   <%
  while(rs1.next())
  {
 %>
     <option value="<%=rs1.getString("cropname")%>"><%=rs1.getString("cropname")%></option>
  
     <%
  }
    %>
   </select></td></tr>
   <tr><td><b>Nitrogen(N)(gms)</b></td><td><input type="text" name="nitro"></td></tr>
   <tr><td><b>Phosporous(P2O5)(gms)</b></td><td><input type="text" name="phosporus"></td></tr>
   <tr><td><b>CoffeeCreamer(K2O)(gms)</b></td><td><input type="text" name="cofeecreamer"></td></tr>
   <tr><td><b>Use Fertilizer for Heactor(kg)</b></td><td><input type="text" name="usefertacre"></td></tr>
   <tr><td><b>Cost of Fertilizer(rs/kg)</b></td><td><input type="text" name="costfert"></td></tr>
   <tr><td><b>Use Fertilizer per Year</b></td><td><input type="text" name="usefertyear"></td></tr>
   <tr><td><b>Use Fertilizer for State</b></td>
    <td><select name="usefertstate">
    <option>select</option>
		<option value="Andra Pradesh">Andra Pradesh </option>
		<option value="Arunachal Pradesh">Arunachal Pradesh </option>
		<option value="Assam">Assam </option>
		<option value="Bihar">Bihar</option>
		<option value="Chhattisgarh">Chhattisgarh</option>
		<option value="Goa">Goa</option>
		<option value="Gujarat">Gujarat </option>
		<option value="Haryana">Haryana </option>
		<option value="Himachal Pradesh">Himachal Pradesh </option>
		<option value="Jammu and Kashmir">Jammu and Kashmir </option>
		<option value="Jharkhand">Jharkhand</option>
		<option value="Karnataka">Karnataka </option>
		<option value="Kerala">Kerala </option>
		<option value="Madya Pradesh">Madya Pradesh </option>
		<option value="Maharashtra">Maharashtra </option>
		<option value="Manipur">Manipur </option>
		<option value="Meghalaya">Meghalaya </option>
		<option value="Mizoram">Mizoram </option>
		<option value="Nagaland">Nagaland </option>
		<option value="Orissa">Orissa </option>
		<option value="Punjab">Punjab </option>
		<option value="Rajasthan">Rajasthan </option>
		<option value="Sikkim">Sikkim </option>
		<option value="Tamil Nadu">Tamil Nadu </option>
		<option value="Tripura">Tripura</option>
		<option value="Uttaranchal">Uttaranchal</option>
		<option value="Uttar Pradesh">Uttar Pradesh </option>
		<option value="West Bengal">West Bengal </option>
		</select></td>
			</tr>
   <tr><td><b>Use Fertilizer for Crops(qty/hector)</b></td><td><input type="text" name="usefertcrops"></td></tr>
   <tr><td><input type="submit" value="send"><input type="submit" value="clear"></td></tr>
   
 
</table>
</form>



</td></tr>
    </table>
    </td></tr></table>
    
</body>
</html>