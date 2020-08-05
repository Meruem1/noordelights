<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="css/contactcss.css">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
<body>

    
  </head>
  <body>
  <header>
  

  <nav>
			<div class="row clearfix">
				<img src="img/l4.jpg" class="logo">

 				<ul class="main-nav" >
					<li><a href="index1.html">HOME</a></li>
	<li><a href="reg1.jsp">SIGN UP</a></li>
	<li><a href="content.jsp">OUR PRODUCTS</a>

	<li><a href="#">ABOUT US </a></li>
	<li><a href="#">CONTACT US</a></li>
				</ul>
				<a href="#" class="mobile-icon"  onclick="slideshow()"> <i class="fa fa-bars"></i> </a>
			</div>
		</nav>
  

<div class="contact-section">

  <h1>Contact Us</h1>
  <div class="border"></div>
  
  <p >
       <pre style="color:#b87a7a; font-size:130%">
       Email us with any questions or enquiries or call 7021355962. We would be 
       happy to answer your questions. </pre></p>
  	 <form name="frm" action="<%=request.getContextPath()%>/Contact" onsubmit="return IsEmpty()" class="contact-form" method="post" required>
 <!--  <form class="contact-form" action="Contact" method="post"> -->
    <input type="text" class="contact-form-text" placeholder="Your name" name="fname">
    <input type="email" class="contact-form-text" placeholder="Your email" name="emailid" >
    <input type="text" class="contact-form-text" placeholder="Your phone" name="phone" >
    <textarea class="contact-form-text" placeholder="Your message" name="message" ></textarea>
    <input type="submit"  class="contact-form-btn" value="Send"  >
<!--     <button class="contact-form-btn" onclick="IsEmpty();">send</button>
 -->  </form>
</div>
</header>



  <!-- <script>
    function IsEmpty() {

      if (document.forms['frm'].fname.value == "" || 
    		  document.forms['frm'].emailid.value == "" ||
    			  document.forms['frm'].phone.value == "" ||
    				  document.forms['frm'].message.value == "") {
        alert("some fields are empty");
      }
      
      return;
    }
  </script> -->
  
  
  
  
  <script>
function IsEmpty() {
  var x = document.forms["frm"]["fname"].value; 
  var y = document.forms["frm"]["emailid"].value;
  var z =document.forms["frm"]["phone"].value;
  var w =document.forms["frm"]["message"].value;
  if ((x == "" || x == null) || 
		  (y == "" || y == null) ||
		  (z == "" || z == null) ||
		  (w == "" || w == null))
  {
    alert("Some fields are empty");
    return false;
  }
  else
  alert ("Submitted successfully");
}
</script>




  </body>
</html>

<!-- <script src="js/contact.js"></script> -->
	
</body>
</html>