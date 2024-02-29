<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="classes.DbConnection" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//SoftQuad//DTD HoTMetaL PRO 4.0::19971010::extensions to HTML 4.0//EN" "hmpro4.dtd">

<html><head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  <meta name="verify-v1" content="bGDK2jk+Vhn+Kk2NrZFue5EbYn1Fed4v/Ej+U2bg7wc=">
<script type="text/javascript" src="scripts/project.js"></script>

    <title>Agriculture Industry - Agricultural Products,Agricultural Product
    Manufacturers,Exporters,Suppliers,Importers</title>
    <meta name="Description" content="Agriculture Industry - Guide to the agriculture industry in India, providing listings of agri produce manufacturers, exporters, suppliers, importers, buy sell trade leads, agro business catalogs, EXIM policies, agro industry statistics, agriculture pricing policies and national seeds policy of India.">
    <meta name="Keywords" content="agriculture industry, agriculture product manufacturers, agro product exporters, agro industry guide, agro industry guide, indian agriculture industry agro industry directory, agro business catalogs, agro industry statistics, agriculture pricing policies, national seeds policy, agri industry india, agri product exporters, agro product suppliers, india agriculture, agricultural commodity exporters, agro product manufacturers and exporters, india">
    <link href="ABC/agrostyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="scripts/general.js"> </script>
<STYLE type=text/css>
.inpt {
	FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
}
.tarea {
	FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
}
INPUT {
	FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
}
FONT {
	COLOR: #4f4d4d; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif
}
.style1 {
	color: #9F0B05;
	font-weight: bold;
	font-size: 9px;
}
a:active {
	text-decoration: none;
}
.style2 {
	color: #9F0B05;
	font-weight: bold;
}
.style23 {font-size: 14px; font-weight: bold; color: #CC856A; }
.style24 {
	font-size: 24px;
	font-weight: bold;
}
.style25 {color: #663333}
.style26 {
	color: #753F81;
	font-weight: bold;
}
.style27 {
    font-size: 28px; font-weight: bold;
	color: #228B22;
	font-weight: bold;
}
</STYLE>
</head>
  <body leftmargin="0" topmargin="0" bgcolor="#c1DDD7" marginheight="0" marginwidth="0">
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
        <td bgcolor="#336600"><img src="ABC/corn-bot1.gif" width="50" height="18"><img src="ABC/sanjeev.gif" width="34" height="18"><img src="ABC/grad.gif" width="332" height="18"><jsp:include page="usermenu.html"/></td>
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
    </tbody></table></td>
    <td valign="top">
    
    
    <table align=center width="897" height="354">
    <tr align="center"><td bgcolor="#c1DDD7">

<center><b><font COLOR="BLUE" size="3">VIEW STATE WISE CROPS</font></b></center><br><br>
	
		
   <form  action="uviewstatewisecrops.jsp" method="post">
		<table cellspacing=2 align="center" bgcolor="#CEF6CE" width="500" height="100">
				<tr>
		                <td><font color="green">STATE NAME</font></td> 
		               <td><select name="statename">
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
				<tr>	
		                 <td align="right"><input type="submit" name="submit"  size="20"/></td>
		                 <td align="center"><input type="reset" name="Clear" size="20"/></td>
	            </tr>
	            </table>
		</form>
	



</td></tr>
    </table>
    </td></tr></table>
    
   </body></html>
   