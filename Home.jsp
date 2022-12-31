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


.con{
	width: 100%;
	margin-top: 130px;
}
.c1{
	position:absolute;
	margin-left: 20%;
	margin-top: 5%;
	width: 25%;
}

.c2{
	position:absolute;
	margin-left: 50%;
	margin-top: 5%;
	width: 25%;
}
.container-fluid{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 15px 0 rgba(0, 0, 0, 0);
	padding-top: 35px;
	position: absolute;
}

.card{

	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 15px 0 rgba(0, 0, 0, 0.19);
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</nav><br><br>
<div class="con">
<div class="c1">
<div class="card">			
  <div class="card-body">
    <h5 class="card-title">Reservation Form</h5>
    <p class="card-text">if you want to book a ticket.</p>
    <a href="loginValidate.jsp" class="btn btn-outline-success">Click Here</a>
  </div>
</div> 
</div>
<div class="c2">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Cancel Reservation</h5>
    <p class="card-text">if you want to cancel your reservation.</p>
    <a href="loginCancel.jsp" class="btn btn-outline-danger">Click Here</a>
  </div>
</div>
</div>
</div>
</body>
</html>