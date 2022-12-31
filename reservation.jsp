<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
@import url('https://fonts.googleapis.com/css2?family=Passion+One:wght@400;700&display=swap');
.mb-3 input{
	width:25% ;
}

form{
margin-left: 40%;
margin-top: 0%;
	}
	
	p{
		position: absolute;
		margin-top:0%;
		margin-left:40%; 
		
	}
	
	h3{
	
	font-family: 'Passion One', cursive;
	font-size:60px;
	margin-top: 3%;
	}
	
	.co{
		margin-left: 35%;
		margin-top: 8%; 
	}
	
	.co a{
		margin-top: 30px;
		margin-left: 140px;
	}
.container-fluid{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 15px 0 rgba(0, 0, 0, 0);
	padding-top: 35px;
	position: absolute;
}	
	p{
		margin-left: 160px;
	}
</style>
<meta charset="ISO-8859-1">
<title>Reservation</title>
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

	<div class="con">
			<%int b= (Integer)session.getAttribute("ins"); %>
			<%if(b>0) { String pnr="";%>
				<div class="co">
				<h3>Reservation Done</h3>
				<%try {
					
					String con11=request.getParameter("con");
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/online_reservation_system","root","Aadesh@1991");
					PreparedStatement ps= con.prepareStatement("Select * from reservation where contact=?");
					ps.setString(1, con11);
					
					ResultSet rs=ps.executeQuery();
					while(rs.next()){
						%>
					<p>PNR:<%= rs.getString(1)%></p><br>
						<%
					}
				}catch(Exception e){
					e.getMessage();
				}
					%>
					
				 <a href="Home.jsp" class="btn btn-outline-danger">Home Page</a>
				 </div>
			<%}else{ %>
				<p style="color: red">Enter Valid Data...</p>
				<fieldset>
	<form action="reser" method="post">
	<h3>Reservation Form</h3>
  	<div class="form-floating mb-3">
    <input type="text" class="form-control" id="floatingInput" name="name" placeholder="name" >
 	<label for="floatingInput">Your name</label>
 	</div>
  	<div class="form-floating mb-3">
  	<input type="text" class="form-control" id="floatingPassword" name="contact" placeholder="Password" maxlength="10">
  	<label for="floatingPassword">Contact No.</label>
	</div>
	<div class="form-floating mb-3">
  	<input type="email" class="form-control" id="floatingPassword" name="email" placeholder="Password">
  	<label for="floatingPassword">Email id</label>
	</div>
	<div class="form-floating mb-3">
  	<input type="text" class="form-control" id="floatingPassword" name="tnum" placeholder="Password">
  	<label for="floatingPassword">Train number</label>
	</div>
	<div class="form-floating mb-3">
  	<input type="password" class="form-control" id="floatingPassword" name="tname" placeholder="Password">
  	<label for="floatingPassword">Train Name</label>
	</div>
	<div class="form-floating mb-3">
  	<input type="class" class="form-control" id="floatingPassword" name="classtype" placeholder="Password">
  	<label for="floatingPassword">Class type</label>
	</div>
	<div class="form-floating mb-3">
  	<input type="date" class="form-control" id="floatingPassword" name="date" placeholder="Password">
  	<label for="floatingPassword">Date of Journey</label>
	</div>
	<div class="form-floating mb-3">
  	<input type="text" class="form-control" id="floatingPassword" name="place1" placeholder="Password">
  	<label for="floatingPassword">From:</label>
	</div>
	<div class="form-floating mb-3">
  	<input type="text" class="form-control" id="floatingPassword" name="place2" placeholder="Password">
  	<label for="floatingPassword">To:</label>
	</div>
  	<button type="submit" class="btn btn-primary">Submit</button>
  	</form>
	</fieldset>
			<%} %>
	</div>
	
</body>
</html>