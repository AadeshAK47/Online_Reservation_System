<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<% ResultSet rs= (ResultSet)session.getAttribute("login"); %>
	<%if(rs!=null) { 
		RequestDispatcher rd= request.getRequestDispatcher("cancel.html");
		rd.forward(request, response);
		
	}else{
		
		RequestDispatcher rd= request.getRequestDispatcher("login.html");
		rd.forward(request, response);
	}
	 %>
	
</body>
</html>