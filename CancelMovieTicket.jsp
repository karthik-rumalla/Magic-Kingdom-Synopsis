<%@ page import="java.sql.*" %>
<%@ page import="dao.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cancel Movie Tickets !</title>
</head>
<body bgcolor="orange">
<a href="Account.jsp">CUSTOMER HOME</a>
<center>
      <%  
           
           String uname = (String)session.getAttribute("uname");
           System.out.println("User Name : "+uname);
          Connection con = Dao.connect();
          PreparedStatement ps = con.prepareStatement("select * from booking where uname=?");
          ps.setString(1, uname);
          ResultSet rs =ps.executeQuery();
            
      %>
      
      <h1> Select Your Ticket Order To Delete !</h1>
      <form action="DeleteMovieTicketServlet" method="post">
      
        <table border="1">
        <tr>
         <th></th>
         <th>UserNmae</th>
         <th>MovieName</th>
         <th>Theater</th>
         <th>Date</th>
         <th>Time</th>
         <th>Value</th>
        
        </tr>
        
        <% while(rs.next()){ %>
        
          <tr>
          
            <td><input type="checkbox" name="val" value='<%=rs.getString(6) %>'></td>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><%=rs.getString(6) %></td>
          </tr>
        
        
        
      <%} %>
        
        </table>
      <input type="submit" value="Cancel">
      
      </form>
      
      
    <%
      if(request.getParameter("msg")!=null){
    	  String msg = request.getParameter("msg");
    	  out.println("<font size=5 color='red'>"+msg+"</font>");
      }
    
    %>  
      
      


</center>



</body>
</html>