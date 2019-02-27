<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="dao.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Magic Kingdom</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Italianno" />
<link href="http://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet" type="text/css">	
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Clicker+Script" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Pacifico" />
<link href="http://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet" type="text/css">	
<!-- Begin JavaScript -->

		<script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="lib/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="lib/jquery.coda-slider-2.0.js"></script>
<!-- Initialize each slider on the page. Each slider must have a unique id -->
	<script type="text/javascript">
	$().ready(function() {
       $('#coda-slider-2').codaSlider({
           autoSlide: true,
           autoSlideInterval: 3000,
           autoSlideStopWhenClicked: true	
			   
       });
   });
</script>
	<!-- End JavaScript -->

		
    </head>
    <% 
    try
    {
    	
    String sql="select distinct mname from nowmovie";
    Connection con=Dao.connect();
    System.out.println("Connected");
    PreparedStatement ps=con.prepareStatement(sql);
       ResultSet rs=ps.executeQuery();
    System.out.println("executeUpdate");
    %> 

    <body>
		<div id="wrap">
			<div id="header">
				<div id="menu">
					<ul>
						<li><a href="AdminMain.jsp" >Home</a></li>
					    <li><a href="UserReg.jsp" >User Details</a></li>
						<li><a href="Theaters1.jsp">Theaters</a></li>
						<li><a href="Reviewadmin.jsp" class="active">Reviews</a></li>
						<li><a href="AboutUs.jsp">Logout</a></li>
					</ul>
				</div>
				<div class="clear pad_top"></div>
				<div id="logo">
					<h1>Magic Kingdom</h1>
                	
				</div>
				<div id="header_bot">
				
				
 <div class="coda-slider-wrapper">
	<div class="coda-slider preload" id="coda-slider-2">
		<div class="panel">
			<div class="panel-wrapper">
			
				<div class="prew_box">
						<div class="prew_col_left">
							<img src="images/ghazi.jpg" alt="" title="" width="433px" height="198px"/>
						</div>
						<div class="prew_col_right">
							<h2>The Ghazi Attack</h2>
							<p>
								In 1971, a Pakistani submarine called the PNS Ghazi ventured into Indian waters with the ambition of destroying the INS Vikrant.<br> What stopped them? The heroes aboard the Indian submarine S-21.<br>It is the war you did not know about. 
							</p>
						</div>
					</div>
			
			</div>	
		</div>
				
		<div class="panel">
			<div class="panel-wrapper">
				
				<div class="prew_box">
						<div class="prew_col_left">
							<img src="images/john-wick-2.jpg" alt="" title="" width="433px" height="198px"/>
						</div>
						<div class="prew_col_right">
							<h2>JOHN WICK 2</h2>
							<p>
In this next chapter following the 2014 hit, legendary hitman John Wick is forced back out of retirement by a former associate plotting to seize control of a shadowy international assassins' guild. Bound by a blood oath to help him, John travels to Rome where he squares off against some of the world's deadliest killers. 							</p>					
						</div>
					</div>				
				
			</div>
		</div>
		<div class="panel">
			<div class="panel-wrapper">
				
				<div class="prew_box">
						<div class="prew_col_left">
							<img src="images/jolly-llb-2.jpg" alt="" title="" width="433px" height="198px"/>
						</div>
						<div class="prew_col_right">
							<h2>JOHNNY LLB 2</h2>
							<p>
Inspired by true events that has happened in India, the sequel to the national award winning film Jolly LLB will see Jolly take up a huge case where he will fight against the corrupt and the powerful.<br> The fight for what is right will not be an easy one for Jolly as he will realise he will be the last man standing up for justice against injustice.					</div>
					</div>				
				
			</div>
		</div>
		<div class="panel">
			<div class="panel-wrapper">
				
				<div class="prew_box">
						<div class="prew_col_left">
							<img src="images/lion.jpg" alt="" title="" width="433px" height="198px"/>
						</div>
						<div class="prew_col_right">
							<h2>LION</h2>
							<p>
Five year old Saroo gets lost on a train which takes him thousands of Kilometers across India, away from home and family. Saroo must learn to survive alone in Kolkata, before ultimately being adopted by an Australian couple. Twenty five years later, armed with only a handful of memories, his unwavering determination, and a revolutionary technology known as Google Earth, he sets out to find his lost family and finally return to his first home. 					</div>				
				
			</div>
		</div>
		<div class="panel">
			<div class="panel-wrapper">
				
				<div class="prew_box">
						<div class="prew_col_left">
							<img src="images/rangoon.jpg" alt="" title="" width="433px" height="198px"/>
						</div>
						<div class="prew_col_right">
							<h2>Rangoon</h2>
							<p>
"Rangoon" is an epic love story, taking a beautiful film star from the film sets of 1944 Bollywood to the jungles of the India-Burma border where she must entertain the English and Indian troops. In the midst of battles and betrayals, Julia (Kangana Ranaut) falls in love with a young Indian soldier Nawab (Shahid Kapoor), and learns some bitter truths about the dream of Indian independence. Battle lines are drawn when her mentor and lover Rusi (Saif Ali Khan) learns of the torrid love affair. </div>
					</div>
				
				
			</div>
		</div>
	</div>
	<!-- .coda-slider -->
</div>

				
				</div>
			</div>
			<div id="content">
				<div class="one_column">
					  <form action="MovieBooking2.jsp" method="post">
      <center><table>
      <tr><td>${msg}</td></tr>
                <tr>
        <td align="left">Movie </td>
        <td align="left">
        <select name="mname">
       <%  while(rs.next()){ %>
            <option value="<%= rs.getString(1)%>"><%= rs.getString(1)%></option>
        <% } %></select></td>
         <td><input type="submit" value="View Review"/></td>
            </tr>
        <%
			
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
 
       </table></center>  </form><br><br>
				</div>
				<div class="three_column">
					<div class="left_column">
						<h2> Meet our team</h2>
						<img src="images/pic_02.jpg" alt="" title="" /><br />
						<p><a href="AboutUs.jsp">Get to Know us</a><br />
 We're a different kind of web design and development team. Above all, we believe in building exceptional products for our clients</p>
					</div>
					<div class="three_column">
					<div class="left_column">
						<h2>24/7 Customer Care</h2>
						<img src="images/cc.jpg" height="134"  width="230" alt="" title="" />
						<p><a href="Support.jsp">Support Center</a><br /> 
					We pride ourselves on offering the very best in client support services all created and developed from scratch.</p>
					</div>
					<div class="right_column">
						<h2>Contact Us</h2>
						<p> 
For any queries or problems, please leave a message we will get back to you as soon as we can </p>

						<form action="SendFeedbackServlet" method="post">
                            	<table>
                            	<tr>
                            	<td>Your Email:</td>
                            	<td><input type='text' name='email'></input></td>
                            	</tr>
                            	<tr>
                            	<td>Feedback</td>
                            	<td><input type='text' name='fb'></input></td>
                            	</tr>
                            	<tr>
                            	<td><input type='submit' value='submit'></input></td>
                            	<td></td>
                            	</tr>
                            	
                            	</table>
                            </form>
					</div>
					<div class="clear pad_top"></div>
				</div>
				
				<div id="footer_top">
					<div id="footer_pad">
						<div class="foot_column4">
                        <div class="foot_col1">
                            <h2>Services</h2>
                            <ul class="ls">
                                <li><a href="MovieSearch.jsp">Search Movies by names</a></li>
                                <li><a href="TheaterSearch.jsp">Search Movies by Theaters</a></li>
                                <li><a href="Celebrities.jsp">Your Favourite Celebs</a></li>
                                                            </ul>
                        </div>
                        <div class="foot_col2">
                            <h2>Contact Information</h2>
                            <p>
                            	Malla Reddy Engineering College<br />
								Doolapally Road<br />
								Maisammaguda, Secunderabad.<br />
								Phone:  040 6586 4982<br />
								E-mail:karthik.rumalla@gmail.com<br />
							</p>
                        </div>
                        <div><div></div></div>
                        <div class="foot_col4">
                            <h2>Follow Us</h2>
	                        <div class="link2"><a href="#">Be a fan on Facebook</a></div>
	                        <div class="link4"><a href="#">Follow us on Twitter</a></div>
                        </div>
                        <div style="clear: both"></div>
                    </div>
					</div>
				</div>
			</div>
			
			<div id="footer">
				<p>Copyright  2017. <!-- Do not remove -->MAGIC KINGDOM<!-- end --></p>
			</div>
		</div>
    </body>
</html>
