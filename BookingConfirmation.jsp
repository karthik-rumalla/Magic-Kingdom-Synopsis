<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/magic","root", "root");
         
               
      
            
            
            
            
            
               String  query="select * from booking";
            
                PreparedStatement ps = con.prepareStatement(query);
               ResultSet rs = ps.executeQuery();
            
            %>
            
           
                       <table border="1">
                       
                            <tr>
                              
                               <th>User Name</th>
                               <th>Movie</th>
                               <th>Theatre</th>
                                <th>Date</th>
                               <th>Time</th>
                               <th>Tickets</th>
                               
                               
                              
                            
                            </tr>
                       
                       
                       <%while(rs.next()){ %>
                       
                       <tr> <form >
                         
                              <td><%=rs.getString(1) %></td>
                              <td><%=rs.getString(2) %></td>
                              <td><%=rs.getString(3) %></td>
                              <td><%=rs.getString(4) %></td>
                              <td><%=rs.getString(5) %></td>
                              <td><%=rs.getString(6) %></td>
                              
                               
                             
                               
                      
            </form>
                              
                              
                  
                       </tr> 
                             
   
                              .
  <%} %>
   
                       </table>
</body>
</html>