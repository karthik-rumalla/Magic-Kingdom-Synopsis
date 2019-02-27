<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dao.*" %>
<% String a="HELLO"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
div
{
	height:30px;
	width:30px;
	background-image:url(seat1.jpg);
}
p
{
height:30px;
	width:30px;
	background-image:url(seat2.jpg);
}
table
{
	margin-left: 280px;
	margin-top: -1px;

}
#m
{
	margin-left:10px;
	margin-top:-1px;
}

b
{
  	color: yellow;
  	margin-left: 660px;
}


#j
{
background-image: url(123.JPG);
margin-top: 30px;
height: 600px;
width: 900px;
margin-left: 30px;
}

#l
{
	margin-left:58px;
	margin-top:-1px;
}
td{
	height: 30px;
	width:30px;

}
body
{
	background-image: url(images/abc.png);
	
}



</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<script type="text/javascript">
var s = new Array(7);
var y="";
$( document).ready(function()
		{
	var c=0;
	var Var="<%=a %>";
    var res = Var.split(" ");
	alert(res);
	for(var i=0;i<res.length;i++)
		{
		  var xyz=$("#"+res[i]);
		  $("#"+res[i]).css("background-image","url(seat2.jpg)");
		  alert(xyz.attr("title"));
		  
		  
		}
	
	$("div").click(function()
					{
					
				var x=$(this).attr("title");
						if(c>6)
							{
							   $("div").off("click");
								alert("OVER");
								$("#B").focus();
							}
						else
							{
        	 				$("#"+x).css("background-image","url(seat2.jpg)");
        	 				//======================      vcn 
        	 				
        	 					$("#"+x).off("click");
        	 			   //=======================		
        					alert("You have selected " +x +" no of seats " +(c+1));
        	 			           					s[c]=x;
        				
					 	//alert(s);
        	 			           				c++;
							}
						
					});
			  $("#B").click( function()
					{
						 alert("You have selected " +s+ " seats");
						
						 	
						 	var xmlhttp;    
						 	if (window.XMLHttpRequest)
						 	  {// code for IE7+, Firefox, Chrome, Opera, Safari
						 	  xmlhttp=new XMLHttpRequest();
						 	  }
						 	else
						 	  {// code for IE6, IE5
						 	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
						 	  }
						 	xmlhttp.onreadystatechange=function()
						 	  {
						 	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
						 	    {
						 		 
						 	  //  document.getElementById("B").innerHTML=xmlhttp.responseText;
						 	    }
						 	  }
						 	alert("sending");
						 	for(var i=0;i<c;i++)
						 		{
						 		
						 		y=y+s[i]+" ";
						 		}
						// 	alert("Before" +y);
						 	xmlhttp.open("GET","BookServ?q="+y,true);
						 	xmlhttp.send();
						//    alert("after" +y);
				
					}); 
		
	
});
							
</script>							
							


</head>
 <%try{
		
	
	  String time=request.getParameter("time");
	    // String mname=request.getParameter("mname");
	    session.setAttribute("time", time);
	    Connection con=Dao.connect();
	     System.out.println("Connected"+time);
	     
	     

     %>  
      <%
			
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
<body>

 <b>ROYALE</b>
	<table border="0" >
    <tr>
	<td><div title="A1" id="A1"></div></td>
	<td><div title="A2" id="A2"></div></td>
	<td><div title="A3" id="A3"></div></td>
	<td><div title="A4" id="A4"></div></td>
	<td></td>
	<td></td>
    <td><div title="A5" id="A5"></div></td>
	<td><div title="A6" id="A6"></div></td>
	<td><div title="A7" id="A7"></div></td>
	<td><div title="A8" id="A8"></div></td>
	<td><div title="A9" id="A9"></div></td>
	<td><div title="A10" id="A10"></div></td>
	<td><p title="A11" id="A11"></p></td>
	<td><p title="A12" id="A12"></p></td>
	<td><p title="A13" id="A13"></p></td>
	<td><p title="A14" id="A14"></p></td>
	<td><p title="A15" id="A15"></p></td>
	<td><p title="A16" id="A16"></p></td>
	<td></td>
	<td></td>
	<td><p title="A18" id="A17"></p></td>
	<td><p title="A19" id="A18"></p></td>
	<td><p title="A20" id="A19"></p></td>
	<td><p title="A21" id="A20"></p></td>
	</tr>
	<tr>
	<td><div title="B1" id="B1"></div></td>
	<td><div title="B2" id="B2"></div></td>
	<td><div title="B3" id="B3"></div></td>
	<td><div title="B4" id="B4"></div></td>
	<td></td>
	<td></td>
	<td><div title="B5" id="B5"></div></td>
	<td><div title="B6" id="B6"></div></td>
	<td><div title="B7" id="B7"></div></td>
	<td><div title="B8" id="B8"></div></td>
	<td><div title="B9" id="B9"></div></td>
	<td><div title="B10" id="B10"></div></td>
	<td><p title="B11" id="B11"></p></td>
	<td><p title="B12" id="B12"></p></td>
	<td><p title="B13" id="B13"></p></td>
	<td><p title="B14" id="B14"></p></td>
	<td><p title="B15" id="B15"></p></td>
	<td><p title="B16" id="B16"></p></td>
	<td></td>
	<td></td>
	<td><p title="B18" id="B17"></p></td>
	<td><p title="B19" id="B18"></p></td>
	<td><p title="B20" id="B19"></p></td>
	<td><p title="B21" id="B20"></p></td>
	
	</tr>
  </table>
	<b>DRESS CIRCLE</b>
	<table border="0">
	<tr>
	<td><div title="C1" id="C1"></div></td>
	<td><div title="C2" id="C2"></div></td>
	<td><div title="C3" id="C3"></div></td>
	<td><div title="C4" id="C4"></div></td>
	<td></td>
	<td></td>
	<td><div title="C5" id="C5"></div></td>
	<td><div title="C6" id="C6"></div></td>
	<td><div title="C7" id="C7"></div></td>
	<td><div title="C8" id="C8"></div></td>
	<td><div title="C9" id="C9"></div></td>
	<td><div title="C10" id="C10"></div></td>
	<td><p title="C11" id="C11"></p></td>
	<td><p title="C12" id="C12"></p></td>
	<td><p title="C13" id="C13"></p></td>
	<td><p title="C14" id="C14"></p></td>
	<td><p title="C15" id="C15"></p></td>
	<td><p title="C16" id="C16"></p></td>
	<td></td>
	<td></td>
	<td><p title="C18" id="C17"></p></td>
	<td><p title="C19" id="C18"></p></td>
	<td><p title="C20" id="C19"></p></td>
	<td><p title="C21" id="C20"></p></td>
	</tr>
	<tr>
	<td><div title="D1" id="D1"></div></td>
	<td><div title="D2" id="D2"></div></td>
	<td><div title="D3" id="D3"></div></td>
	<td><div title="D4" id="D4"></div></td>
	<td></td>
	<td></td>
	<td><div title="D5" id="D5"></div></td>
	<td><div title="D6" id="D6"></div></td>
	<td><div title="D7" id="D7"></div></td>
	<td><div title="D8" id="D8"></div></td>
	<td><div title="D9" id="D9"></div></td>
	<td><div title="D10" id="D10"></div></td>
	<td><p title="D11" id="D11"></p></td>
	<td><p title="D12" id="D12"></p></td>
	<td><p title="D13" id="D13"></p></td>
	<td><p title="D14" id="D14"></p></td>
	<td><p title="D15" id="D15"></p></td>
	<td><p title="D16" id="D16"></p></td>
	<td></td>
	<td></td>
	<td><p title="D18" id="D17"></p></td>
	<td><p title="D19" id="D18"></p></td>
	<td><p title="D20" id="D19"></p></td>
	<td><p title="D21" id="D20"></p></td>
	</tr>
	<tr>
	<td><div title="E1" id="E1"></div></td>
	<td><div title="E2" id="E2"></div></td>
	<td><div title="E3" id="E3"></div></td>
	<td><div title="E4" id="E4"></div></td>
	<td></td>
	<td></td>
	<td><div title="E5" id="E5"></div></td>
	<td><div title="E6" id="E6"></div></td>
	<td><div title="E7" id="E7"></div></td>
	<td><div title="E8" id="E8"></div></td>
	<td><div title="E9" id="E9"></div></td>
	<td><div title="E10" id="E10"></div></td>
	<td><p title="E11" id="E11"></p></td>
	<td><p title="E12" id="E12"></p></td>
	<td><p title="E13" id="E13"></p></td>
	<td><p title="E14" id="E14"></p></td>
	<td><p title="E15" id="E15"></p></td>
	<td><p title="E16" id="E16"></p></td>
	<td></td>
	<td></td>
	<td><p title="E18" id="E17"></p></td>
	<td><p title="E19" id="E18"></p></td>
	<td><p title="E20" id="E19"></p></td>
	<td><p title="E21" id="E20"></p></td>
	</tr>
   <tr>
	<td><div title="F1" id="F1"></div></td>
	<td><div title="F2" id="F2"></div></td>
	<td><div title="F3" id="F3"></div></td>
	<td><div title="F4" id="F4"></div></td>
	<td></td>
	<td></td>
	<td><div title="F5" id="F5"></div></td>
	<td><div title="F6" id="F6"></div></td>
	<td><div title="F7" id="F7"></div></td>
	<td><div title="F8" id="F8"></div></td>
	<td><div title="F9" id="F9"></div></td>
	<td><div title="F10" id="F10"></div></td>
	<td><p title="F11" id="F11"></p></td>
	<td><p title="F12" id="F12"></p></td>
	<td><p title="F13" id="F13"></p></td>
	<td><p title="F14" id="F14"></p></td>
	<td><p title="F15" id="F15"></p></td>
	<td><p title="F16" id="F16"></p></td>
	<td></td>
	<td></td>
	<td><p title="F18" id="F17"></p></td>
	<td><p title="F19" id="F18"></p></td>
	<td><p title="F20" id="F19"></p></td>
	<td><p title="F21" id="F20"></p></td>
	</tr>
	<tr>
	<td><div title="G1" id="G1"></div></td>
	<td><div title="G2" id="G2"></div></td>
	<td><div title="G3" id="G3"></div></td>
	<td><div title="G4" id="G4"></div></td>
	<td></td>
	<td></td>
	<td><div title="G5" id="G5"></div></td>
	<td><div title="G6" id="G6"></div></td>
	<td><div title="G7" id="G7"></div></td>
	<td><div title="G8" id="G8"></div></td>
	<td><div title="G9" id="G9"></div></td>
	<td><div title="G10" id="G10"></div></td>
	<td><p title="G11" id="G11"></p></td>
	<td><p title="G12" id="G12"></p></td>
	<td><p title="G13" id="G13"></p></td>
	<td><p title="G14" id="G14"></p></td>
	<td><p title="G15" id="G15"></p></td>
	<td><p title="G16" id="G16"></p></td>
	<td></td>
	<td></td>
	<td><p title="G18" id="G17"></p></td>
	<td><p title="G19" id="G18"></p></td>
	<td><p title="G20" id="G19"></p></td>
	<td><p title="G21" id="G20"></p></td>
	</tr>	</table>
	<b>GALLERIA</b>
	<table border="0">
	<tr>
	<td><div title="H1" id="H1"></div></td>
	<td><div title="H2" id="H2"></div></td>
	<td><div title="H3" id="H3"></div></td>
	<td><div title="H4" id="H4"></div></td>
	<td></td>
	<td></td>
	<td><div title="H5" id="H5"></div></td>
	<td><div title="H6" id="H6"></div></td>
	<td><div title="H7" id="H7"></div></td>
	<td><div title="H8" id="H8"></div></td>
	<td><div title="H9" id="H9"></div></td>
	<td><div title="H10" id="H10"></div></td>
	<td><p title="H11" id="H11"></p></td>
	<td><p title="H12" id="H12"></p></td>
	<td><p title="H13" id="H13"></p></td>
	<td><p title="H14" id="H14"></p></td>
	<td><p title="H15" id="H15"></p></td>
	<td><p title="H16" id="H16"></p></td>
	<td></td>
	<td></td>
	<td><p title="H18" id="H17"></p></td>
	<td><p title="H19" id="H18"></p></td>
	<td><p title="H20" id="H19"></p></td>
	<td><p title="H21" id="H20"></p></td>
	</tr>
<tr>
	<td><div title="I1" id="I1"></div></td>
	<td><div title="I2" id="I2"></div></td>
	<td><div title="I3" id="I3"></div></td>
	<td><div title="I4" id="I4"></div></td>
	<td></td>
	<td></td>
	<td><div title="I5" id="I5"></div></td>
	<td><div title="I6" id="I6"></div></td>
	<td><div title="I7" id="I7"></div></td>
	<td><div title="I8" id="I8"></div></td>
	<td><div title="I9" id="I9"></div></td>
	<td><div title="I10" id="I10"></div></td>
	<td><p title="I11" id="I11"></p></td>
	<td><p title="I12" id="I12"></p></td>
	<td><p title="I13" id="I13"></p></td>
	<td><p title="I14" id="I14"></p></td>
	<td><p title="I15" id="I15"></p></td>
	<td><p title="I16" id="I16"></p></td>
	<td></td>
	<td></td>
	<td><p title="I18" id="I17"></p></td>
	<td><p title="I19" id="I18"></p></td>
	<td><p title="I20" id="I19"></p></td>
	<td><p title="I21" id="I20"></p></td>
	</tr>
<tr>
	<td><div title="J1" id="J1"></div></td>
	<td><div title="J2" id="J2"></div></td>
	<td><div title="J3" id="J3"></div></td>
	<td><div title="J4" id="J4"></div></td>
	<td></td>
	<td></td>
	<td><div title="J5" id="J5"></div></td>
	<td><div title="J6" id="J6"></div></td>
	<td><div title="J7" id="J7"></div></td>
	<td><div title="J8" id="J8"></div></td>
	<td><div title="J9" id="J9"></div></td>
	<td><div title="J10" id="J10"></div></td>
	<td><p title="J11" id="J11"></p></td>
	<td><p title="J12" id="J12"></p></td>
	<td><p title="J13" id="J13"></p></td>
	<td><p title="J14" id="J14"></p></td>
	<td><p title="J15" id="J15"></p></td>
	<td><p title="J16" id="J16"></p></td>
	<td></td>
	<td></td>
	<td><p title="J18" id="J17"></p></td>
	<td><p title="J19" id="J18"></p></td>
	<td><p title="J20" id="J19"></p></td>
	<td><p title="J21" id="J20"></p></td>
	</tr>
<tr>
	<td><div title="K1" id="K1"></div></td>
	<td><div title="K2" id="K2"></div></td>
	<td><div title="K3" id="K3"></div></td>
	<td><div title="K4" id="K4"></div></td>
	<td></td>
	<td></td>
	<td><div title="K5" id="K5"></div></td>
	<td><div title="K6" id="K6"></div></td>
	<td><div title="K7" id="K7"></div></td>
	<td><div title="K8" id="K8"></div></td>
	<td><div title="K9" id="K9"></div></td>
	<td><div title="K10" id="K10"></div></td>
	<td><p title="K11" id="K11"></p></td>
	<td><p title="K12" id="K12"></p></td>
	<td><p title="K13" id="K13"></p></td>
	<td><p title="K14" id="K14"></p></td>
	<td><p title="K15" id="K15"></p></td>
	<td><p title="K16" id="K16"></p></td>
	<td></td>
	<td></td>
	<td><p title="K18" id="K17"></p></td>
	<td><p title="K19" id="K18"></p></td>
	<td><p title="K20" id="K19"></p></td>
	<td><p title="K21" id="K20"></p></td>
	</tr>
	</table><br>
<center>	<td><h2>SCREEN THIS WAY</h2></td></center>
<center>	<img src="images/screen.jpg" width="1000" height="20"/></center><br>
	
	<center><a href="BookServ"><img id="B" src="images/submit.jpg"></a></center>
</body>
</html>