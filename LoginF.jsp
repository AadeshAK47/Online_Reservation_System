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
<meta charset="ISO-8859-1">
<style type="text/css">

.mb-3 input{
	width:25% ;
}

form{
margin-left: 40%;
margin-top: 10%;
	}
	
	.pa{
		position: absolute;
		margin-top:8%;
		margin-left:40%; 
		
	}
	a{
		text-decoration: none;
		
	}
	.container-fluid{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 15px 0 rgba(0, 0, 0, 0);
	padding-top: 35px;
	position: absolute;
}
	
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% ResultSet rs= (ResultSet)session.getAttribute("res"); %>
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
<p class="pa" style="color: red">Enter Valid Data...</p>
<fieldset>
	<form action="log" method="post">
	<h3>Login Here</h3><br>
  	<div class="form-floating mb-3">
    <input type="text" class="form-control" id="floatingInput" name="id" placeholder="" maxlength="10">
 	<label for="floatingInput">Login id</label>
 	</div>
  	<div class="form-floating mb-3">
  	<input type="password" class="form-control" id="floatingPassword" name="pass" placeholder="Password">
  	<label for="floatingPassword">Password</label>
	</div>
  	<button type="submit" class="btn btn-primary">Login</button>
  	<p>Don't have an account...<a href="Registration.html">Click Here</a></p>
  	</form>
  	
	</fieldset>
</body>
</html>