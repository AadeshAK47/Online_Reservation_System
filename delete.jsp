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
	
</style>
<meta charset="ISO-8859-1">
<title>Cancel Successfully</title>
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

	<div class="co">
	<% int rs= (Integer)session.getAttribute("hss");
		if(rs>0)
		{
	%>
	<h3>Reservation Cancel</h3>
	 <a href="Home.jsp" class="btn btn-outline-danger">Home Page</a>
	
	<%}%>
	
	</div>
</body>
</html>