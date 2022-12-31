<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

<style type="text/css">
.pag{
		position:absolute;
		width: 30%;
		margin-left: 35%;
		margin-top: 2%;
		
}
.pag th{
	text-align: right;
	padding-right: 4%;
}

.pag tr{
	padding-left: 35px;
}

.pag td td{
		padding-left: 35px;
	
}
.mb-3 input{
	width:25% ;
}

form{
margin-left: 40%;
margin-top: 10%;
	}
p{
	position: absolute;
	margin-left: 40%;
	margin-top: 8%;
	font-size: 15px;
	font-style: italic;
	color: red;
}

.main{
	margin-top: 31%;
	margin-left: 45%;
}

.main a{
	text-decoration: none;
	color: black;
}

h1{
	
	margin-top: 90px;
	margin-right: 35px;
}

.container-fluid{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 15px 0 rgba(0, 0, 0, 0);
	padding-top: 35px;
	position: absolute;
}
</style>
<meta charset="ISO-8859-1">
<title>Booking Details</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="Home.jsp">ORS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav me-2">
        <a class="nav-link" href="about.html">About us</a>
      </div>
    </div>
  </div>
</nav>
<% ResultSet rs= (ResultSet)session.getAttribute("res");
		if(rs.isBeforeFirst()){
	%>
	<h1 align="center">Details</h1>
	<div class="pag">
	<table class="table">
	<tbody>
	<%while(rs.next()) { %>
	
	<tr ><th scope="row">PNR: </th><td><%= rs.getInt(1) %></td></tr>
	<tr ><th scope="row">Customer name: </th><td><%= rs.getString(2) %></td></tr>
	<tr ><th scope="row">Contact Number: </th><td><%= rs.getString(3) %></td></tr>
	<tr ><th scope="row">Email id: </th><td><%= rs.getString(4) %></td></tr>
	<tr ><th scope="row">Train Number: </th><td><%= rs.getString(5) %></td></tr>
	<tr ><th scope="row">Train Name: </th><td><%= rs.getString(6) %></td></tr>
	<tr ><th scope="row">Class Type: </th><td><%= rs.getString(7) %></td></tr>
	<tr ><th scope="row">Date: </th><td><%= rs.getDate(8) %></td></tr>
	<tr ><th scope="row">From: </th><td><%= rs.getString(9) %></td></tr>
	<tr ><th scope="row">To: </th><td><%= rs.getString(10) %></td></tr>
	<% session.setAttribute("pn", rs.getInt(1)); %>
	
	<%}%>
	</tbody>
	</table>
	</div>
		<div class="main">
	<a href="cancelj2.jsp" class="btn btn-outline-danger">Cancel Reservation</a>
	</div>
	
	<%} else{ %>
		
	<p>Data Not Found</p>
	<form action="cancel" method="post">
		
	<div class="form-floating mb-3">
    <input type="text" class="form-control" id="floatingInput" aria-describedby="emailHelp" placeholder="pnr" name="pnr"><br>
    <label for="exampleInputEmail1" class="form-label">PNR Number: </label>
    
    <button type="submit" class="btn btn-primary">Submit</button>
	</div>	
	</form>
	
	<%} %>
	
</body>
</html>