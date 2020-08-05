<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
	
	<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/style1.css">
	
	

<body>


<%
	response.setHeader("cache-control","no-cache, no-store, must-revalidate");


%>

<div class="align">
		<img class="logo" src="img/logo.svg">
		<div class="card">
			<div class="head">
				<div></div>
				<a id="login" class="selected" href="#login">Login</a>
				<a id="register" href="#register">Register</a>
				<div></div>
			</div>
			<div class="tabs">
			 <form action="<%=request.getContextPath()%>/login" method="post" >
					<div class="inputs">
						<div class="input">
							<input placeholder="Username" type="text" name="username" required>
							<img src="img/user.svg">
						</div>
						<div class="input">
							<input placeholder="Password" type="password" name="password" required>
							<img src="img/pass.svg">
						</div>
						<label class="checkbox">
							<input type="checkbox">
							<span>Remember me</span>
						</label>
					</div>
			 		
					<button >Login</button>
				 
				</form>
			
			 <form name="frm1" action="<%=request.getContextPath()%>/reg" onsubmit="return IsEmpty1()" method="post" required>
					<div class="inputs">
						
						
						<div class="input">
						<input placeholder="First Name" type="text" name="fname"/>
						<img src="img/user.svg">
						</div>
						
						<div class="input">
						<input placeholder="Last Name" type="text" name="lname"/>
						<img src="img/user.svg">
						</div>
						
						
					<div class="input">
							<input placeholder="Email" type="text" name="emailid"/>
							<img src="img/mail.svg">
						</div> 
						
						<div class="input">
						<input placeholder="mobile number" type="text" name="phone"/>
						<img src="img/phone-call.svg">
						</div> 
						
						<div class="input">
							<input placeholder="Username" type="text" name="username"/>
							<img src="img/user.svg">
						</div>
						<div class="input">
							<input placeholder="Password" type="password" name="password"/>
							<img src="img/pass.svg">
						</div>
					</div>
			
					
			
						<button type="submit">Register</button>
				</form>
			</div>
		</div>
	</div>
	
	
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/index.js"></script>
<!-- 	<script src="js/reg.js"></script> -->
	  <script>
function IsEmpty1() {
  var x = document.forms["frm1"]["fname"].value; 
  var y = document.forms["frm1"]["lname"].value;
  var z =document.forms["frm1"]["emailid"].value;
  var w =document.forms["frm1"]["phone"].value;
  var a =document.forms["frm1"]["username"].value;
  var b =document.forms["frm1"]["password"].value;
  if ((x == "" || x == null) || 
      (y == "" || y == null) ||
	  (z == "" || z == null) ||
	  (w == "" || w == null) ||
	  (a == "" || a == null) ||
	  (b == "" || b == null))
  {
    alert("Some fields are empty");
    return false;
  }
  else
	  alert("Registered successfully");
}
</script>
	

</body>
</html>