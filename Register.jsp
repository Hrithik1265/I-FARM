<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>E-Farmer</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript" src="scripts/ts_picker.js"></script>
		<script type="text/javascript" src="scripts/submit.js"></script>
<script language="javascript">
function formCheck(formobj){
	
	var fieldRequired = Array("firstname","lastname","bdate","city","state","country","email","loginname","password","squest","sanswer");
	
	var fieldDescription = Array("First Name","Last Name","Birth Date","City","State","Country","Email","Login Name","Password","Secret Question","Secret Answer");
	// dialog message
	var alertMsg = "Please complete the following fields:\n";
	
	var l_Msg = alertMsg.length;
              
	
	for (var i = 0; i < fieldRequired.length; i++){
		var obj = formobj.elements[fieldRequired[i]];
		if (obj){
			switch(obj.type){
			case "select-one":
				if (obj.selectedIndex == -1 || obj.options[obj.selectedIndex].text == ""){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			case "select-multiple":
				if (obj.selectedIndex == -1){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			case "text":
			case "textarea":
				if (obj.value == "" || obj.value == null){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			default:
			}
			if (obj.type == undefined){
				var blnchecked = false;
				for (var j = 0; j < obj.length; j++){
					if (obj[j].checked){
						blnchecked = true;
					}
				}
				if (!blnchecked){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
			}
                                                  
		}
	}

	if (alertMsg.length == l_Msg){
		return true;
	}else{
		alert(alertMsg);
		return false;
	}
}

</script>		

<script language="javascript">
function check()
{
   if(!document.register.ch.checked)
   {
         document.register.ownquest.disabled=true;
         document.register.squest.disabled=false;
   }
   else
   {
         document.register.ownquest.disabled=false;
         document.register.squest.disabled=true;
   }
}

</script>


</script>
</head><body leftmargin="0" topmargin="0" bgcolor="#c1DDD7" marginheight="0" marginwidth="0">
    <div style="position: absolute; left: 7px; top: 49px; font-family: arial; font-size: 27px; color: rgb(51, 102, 0);margin-left: 90px;" class="tlt"><a href="#"><b>E-Farmer</b></a></div>
    <div style="position: absolute; left: 241px; top: 285px; padding-right: 10px;" align="justify"><font class="ag-text-gr">.</font></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td background="ABC/top-td-bg.jpg" bgcolor="#90c82f"><a href="#"><img src="ABC/indian-agro-industry.gif" alt="Agriculture Industry - Agriculture Product Manufacturers,Exporters,Suppliers,Importers,Agro Industry Guide" width="306" align="left" border="0" height="88" hspace="0"></a><img src="ABC/rice-wheat-corn-img.gif" alt="indian agro portal" width="110" height="88"><img src="ABC/dals.gif" alt="agro industry catalogs" width="107" height="88"><img src="ABC/fruits-vegetables.gif" alt="agriculture product manufacturers" width="107" height="88"></td>
      </tr>
     
      
    </tbody></table>
      <table><tr><td>
    <table width="238" valign="top" border="0" cellpadding="0" cellspacing="0" bgcolor="#c1DDD7">
      <tbody><tr bgcolor="green">
      <tr bgcolor="green">
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
    
    
    <table align=center width="897" height="354">
    <tr align="center"><td bgcolor="#c1DDD7">
    <center><b><h4><strong>Registration Form</strong></h4></b></center>
  
  <form  action="Resgistration" name="register" method="post" onsubmit="return formCheck(this)">
  <%if(request.getParameter("status")!=null)
					  {%>
					  <%=request.getParameter("status")%>
					  <%}%>
<table width="481" border="0" align="center" bordercolor="#CD848F" bgcolor="#EDF9DF">
                        <tr>
                          <td width="7" height="57" valign="top">&nbsp;</td>
                          <td width="471"><div align="center"><span class="style11"></span></div></td>
                          <td width="10">&nbsp;</td>
                        </tr>
                        <tr>
                          <td align="right">&nbsp;</td>
                          <td><table width="407" border="0" align="center">
                              <tr>
                                <td width="128"><span class="style17">First Name </span></td>
                                <td width="269"><label>
                                  <input type="text" name="firstname" onkeypress="return lettersOnly(event)">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Last Name </span></td>
                                <td><label>
                                  <input type="text" name="lastname" onkeypress="return lettersOnly(event)">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Birth Date </span></td>
                                <td><label>
                                  <input type="text" name="bdate"><a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);">
</a>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">State</span></td>
                                <td><label>
                                  <select name="statename">
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
		</select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">City</span></td>
                                <td><label>
                                  <select name="city">
                                    <option>Agartala</option>
                                    <option>Aizawi</option>
				                    <option>banglore</option>
                                    <option>Bhopal</option>
                                    <option>Bhubaneshwar</option>
                                    <option>chennai</option>
                                    <option>Chandigarh</option>
                                    <option>Chandigarh</option>
                                    <option>Dispur</option>
                                    <option>Dehradun</option>
                                    <option>Gandhinagar</option>
                                    <option>Gangtok</option>
                                    <option>Hyderabad</option>
                                    <option>Itangar</option>
                                    <option>Imphal</option>
                                    <option>Jaipur</option>
                                    <option>Kolkata</option>
                                    <option>Kolkata</option>
                                    <option>Lucknow</option>
                                    <option>Mumbai</option>
                                    <option>Patna</option>
                                    <option>Panaji</option>
                                    <option>Ranchi</option>
                                    <option>Shimla</option>
                                    <option>Srinagar</option>
                                    <option>Shillong</option>
                                    <option>Thiruvananthapuram</option>
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Country</span></td>
                                <td><label>
                                  <select name="country">
                                    <option>India</option>
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Email Address</span></td>
                                <td><label>
                                    <input type="text" name="email">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Login Name </span></td>
                                <td><label>
                                  <input type="text" name="loginname">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Password</span></td>
                                <td><label>
                                  <input name="password" type="password" id="password">
                                </label></td>
                              </tr>
                             
                              <tr>
                                <td><span class="style17">
                                  <label>Secret Question</label>
                                </span></td>
                                <td><select name="squest">
                                    <option value="1">What is your favorite pastime?</option>
                                    <option value="2">Who was your childhood hero?</option>
                                    <option value="3">What was the name of your first school?</option>
                                    <option value="4">Where did you meet your spouse?</option>
                                    <option value="5">What is your favorite sports team?</option>
                                    <option value="6">What is your father's middle name?</option>
                                    <option value="7">What was your high school mascot?</option>
                                    <option value="8">What make was your first car or bike?</option>
                                    <option value="9">What is your pet's name?</option>
                                </select></td>
                              </tr>
                              
                              <tr>
                                <td><span class="style17">Secret Answer </span></td>
                                <td><input name="sanswer" type="text"></td>
                              </tr>
                              <input type="hidden" name="diff" value="user">
                              <tr>
                                <td colspan="2"><div align="center">
                                    <INPUT type="image" name="submit" src="./images/RegisterNow.gif" border="0" style="border-width: 1px; height:40px; width:150px;" type="image" >
                                </div></td>
                              </tr>
				
                          </table>
</td>
</tr>
</table>
</form> 
<tr>
				<td>
				<center><a href="login.jsp">Login Page</a></center>
				</tr>
				</td>                         
  </body>
</html>
