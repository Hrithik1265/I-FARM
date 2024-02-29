<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="classes.DbConnection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//SoftQuad//DTD HoTMetaL PRO 4.0::19971010::extensions to HTML 4.0//EN" "hmpro4.dtd">

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<meta name="verify-v1"
	content="bGDK2jk+Vhn+Kk2NrZFue5EbYn1Fed4v/Ej+U2bg7wc=">
<script type="text/javascript" src="scripts/project.js"></script>

<title>Agriculture Industry - Agricultural Products,Agricultural
	Product Manufacturers,Exporters,Suppliers,Importers</title>
<meta name="Description"
	content="Agriculture Industry - Guide to the agriculture industry in India, providing listings of agri produce manufacturers, exporters, suppliers, importers, buy sell trade leads, agro business catalogs, EXIM policies, agro industry statistics, agriculture pricing policies and national seeds policy of India.">
<meta name="Keywords"
	content="agriculture industry, agriculture product manufacturers, agro product exporters, agro industry guide, agro industry guide, indian agriculture industry agro industry directory, agro business catalogs, agro industry statistics, agriculture pricing policies, national seeds policy, agri industry india, agri product exporters, agro product suppliers, india agriculture, agricultural commodity exporters, agro product manufacturers and exporters, india">
<link href="ABC/agrostyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="scripts/general.js">
	
</script>
<STYLE type=text/css>
.inpt {
	FONT-SIZE: 8pt;
	BORDER-TOP-STYLE: groove;
	FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif;
	BORDER-RIGHT-STYLE: groove;
	BORDER-LEFT-STYLE: groove;
	BORDER-BOTTOM-STYLE: groove
}

.tarea {
	FONT-SIZE: 8pt;
	BORDER-TOP-STYLE: groove;
	FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif;
	BORDER-RIGHT-STYLE: groove;
	BORDER-LEFT-STYLE: groove;
	BORDER-BOTTOM-STYLE: groove
}

INPUT {
	FONT-SIZE: 8pt;
	BORDER-TOP-STYLE: groove;
	FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif;
	BORDER-RIGHT-STYLE: groove;
	BORDER-LEFT-STYLE: groove;
	BORDER-BOTTOM-STYLE: groove
}

FONT {
	COLOR: #4f4d4d;
	FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif
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

.style23 {
	font-size: 14px;
	font-weight: bold;
	color: #CC856A;
}

.style24 {
	font-size: 24px;
	font-weight: bold;
}

.style25 {
	color: #663333
}

.style26 {
	color: #753F81;
	font-weight: bold;
}

.style27 {
	font-size: 28px;
	font-weight: bold;
	color: #228B22;
	font-weight: bold;
}
</STYLE>
</head>
<body leftmargin="0" topmargin="0" bgcolor="#c1DDD7" marginheight="0"
	marginwidth="0">
	<div
		style="position: absolute; left: 7px; top: 49px; font-family: arial; font-size: 27px; color: rgb(51, 102, 0);"
		class="tlt">
		<a href="#"><b>Farmers Buddy</b></a>
	</div>
	<div
		style="position: absolute; left: 241px; top: 285px; padding-right: 10px;"
		align="justify">
		<font class="ag-text-gr">.</font>
	</div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tbody>
			<tr>
				<td background="ABC/top-td-bg.jpg" bgcolor="#90c82f"><a
					href="#"><img src="ABC/imart-agro.gif"
						alt="IndiaMART - Source &gt; Supply &gt; Grow" width="119"
						align="right" border="0" height="88" hspace="0"></a><a href="#"><img
						src="ABC/indian-agro-industry.gif"
						alt="Agriculture Industry - Agriculture Product Manufacturers,Exporters,Suppliers,Importers,Agro Industry Guide"
						width="306" align="left" border="0" height="88" hspace="0"></a><img
					src="ABC/rice-wheat-corn-img.gif" alt="indian agro portal"
					width="110" height="88"><img src="ABC/dals.gif"
					alt="agro industry catalogs" width="107" height="88"><img
					src="ABC/fruits-vegetables.gif"
					alt="agriculture product manufacturers" width="107" height="88"></td>
			</tr>
			<tr>
				<td background="ABC/d-bg.gif" bgcolor="#ffffc0"><img
					src="ABC/corn-bot.gif" width="50" height="15"><img
					src="ABC/agro-punch.gif" alt="Guide To Indian Agriculture Sector"
					width="366" height="15"></td>
			</tr>
			<tr>
				<td bgcolor="#336600"><img src="ABC/corn-bot1.gif" width="50"
					height="18"><img src="ABC/sanjeev.gif" width="34" height="18"><img
					src="ABC/grad.gif" width="332" height="18"><jsp:include
						page="usermenu.html" /></td>
			</tr>
		</tbody>
	</table>
	<table>
		<tr>
			<td>
				<table width="238" valign="top" border="0" cellpadding="0"
					cellspacing="0">
					<tbody>
						<tr bgcolor="green">
							<td width="208"><img src="ABC/paddy.jpg"
								alt="agro directory, indian agriculture product manufacturers, exporters, suppliers and importers guide"
								width="208" height="148"><br> <img
								src="ABC/farms.jpg"
								alt="indian agriculture industry, agro industry guide, agro industry portal"
								width="208" height="93"></td>
							<td width="30"><img src="ABC/zero.gif" width="30" height="1"></td>
						</tr>
						<tr bgcolor="green">
							<td width="208"></td>
							<td width="30"></td>
						</tr>
						<tr bgcolor="green">
							<td width="208" align="center"><img
								src="ABC/indian-farmer.jpg" alt="Indian Farmer" width="208"
								height="145"><br>
								<table width="100%" border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td height="3"></td>
										</tr>

										<tr>
											<td bgcolor="#336600"></td>
										</tr>
									</tbody>
								</table></td>
							<td width="30"></td>
						</tr>
					</tbody>
				</table>
			</td>
			<td width="300" align="center">

				<table width="300" border="2" cellspacing="2" cellpadding="3"
					ALIGN="CENTER">
					<tr>

						<td width="200" BGCOLOR="YELLOW">CROPNAME</td>
						<td width="200" BGCOLOR="YELLOW">MODEL</td>
						<td width="200" BGCOLOR="YELLOW">MODELPRICE(rs/kg)</td>
						<td width="200" BGCOLOR="YELLOW">UNITSOFARRIVALS(kg)</td>
						<td width="200" BGCOLOR="YELLOW">MARKETAREA</td>
						<td width="200" BGCOLOR="YELLOW">UNITPRICE(rs/kg)</td>
						<td width="100" BGCOLOR="YELLOW">GRADE</td>
						<td width="200" BGCOLOR="YELLOW">MARKETNAME</td>
					     <td width="200" BGCOLOR="YELLOW">VARIETY</td>
						<td width="100" BGCOLOR="YELLOW">MAXPRICE(rs/kg)</td>
						<td width="100" BGCOLOR="YELLOW">MINPRICE(rs/kg)</td>
                       <td width="100" BGCOLOR="YELLOW">ARRIVAL DATE</td>
                    

					</tr>
					<%
			String adate="";
			String a,b,c,d,e,f,g,h,i,j,k="";
			String month=request.getParameter("month");
			Connection connection=DbConnection.getConnection();
			PreparedStatement ps=connection.prepareStatement("select * from fbmrktreport where month='"+month+"'");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				adate=rs.getString("arrivaldate");
               a=rs.getString("CROPNAME");
               b=rs.getString("MODELPRICE");
               c=rs.getString("UNITSOFARRIVALS");
              d=rs.getString("MARKETAREA");
               e=rs.getString("UNITPRICE");
              f=rs.getString("GRADE");
               g=rs.getString("MARKETNAME");
               h=rs.getString("ARRIVALS");
               i=rs.getString("VARIETY");
               j=rs.getString("MAXPRICE");
               k=rs.getString("MINPRICE");
               
               
              //System.out.println("jsp arrival date"+adate);
  			//System.out.println("jsp curdate:"+abc);
  			
  			%>
					
					<tr>
						
						<td><%=a%></td>
						<td><%=h%></td>
						<td><%=b%></td>
						<td><%=c%></td>
						<td><%=d%></td>
						<td><%=e%></td>
						<td><%=f%></td>
						<td><%=g%></td>
						
						<td><%=i%></td>
						<td><%=j%></td>
						<td><%=k%></td>
						<td><%=adate %></td>
						
                        <%
                       
  			
  			
  			}%>
  			<%
  			if(!rs.next())
  			{%>
  			<p align="center"><b><font color="blue">No reports available for month<%=month %> </font></b></p>
  			<%} %>


					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
