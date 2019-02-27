<%@ page import="java.sql.*" %>
<%@ page import="dao.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username=(String)session.getAttribute("uname");
String val=request.getParameter("q");
System.out.println(val+" "+username);
String sql="insert into booking values(?,?)";
MgitConn.InsertBooking(sql, val, username);
%>
</body>
</html>