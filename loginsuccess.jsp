<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 
 <link rel="stylesheet" type="text/css" href="css/css4.css">
<link rel="stylesheet" type="text/css" href="css/style3.css">
<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">

	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">


<!-- <link rel="stylesheet" type="text/css" href="css/cart.css"> -->
<!-- <link rel="stylesheet"  https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css> -->

</head>
<body>
<div style="background-color:lightblue" align="center">
<%@ page import = "java.io.*,java.util.*" %>
  <h1>You have logged successfully::::</h1>
  <%
  




  
  String n=(String)session.getAttribute("uname");
  out.print("welcome:"+n);
	response.setHeader("cache-control","no-cache, no-store, must-revalidate");
  
  /* Date created=new Date(session.getCreationTime());
  out.print("Your session creation time is"+created);
  Date lastAccessTime = new Date(session.getLastAccessedTime());
  out.print("Your session creation time is"+lastAccessTime); */
  %>
  <form action="logout.jsp">
  <input type="submit" value="logout">
  </form>
 </div>
 
 
 
 
 <body>
 <header>
 <%-- <%
 
 
 response.setHeader("cache-control","no-cache,no-store,must-revalidate");
 
 
 
 %> --%>
 	<nav>
			<div class="row clearfix">
				<img src="img/l4.jpg" class="logo">

 				<ul class="main-nav" >
					<li><a href="index1.html">HOME</a></li>
	<li><a href="reg1.jsp">SIGN UP</a></li>
	<li><a href="content.jsp">OUR PRODUCTS</a>

	<li><a href="about.jsp">ABOUT US </a></li>
	<li><a href="contactus.jsp">CONTACT US</a></li>
	
	<li><a href="#">CART</a></li>
	
	
	 <!-- <span class="cart-info__icon mr-lg-3"/>CART</a></li> -->
	
	<!--  <div id="cart-info" class="nav-info align-items-center cart-info d-flex justify-content-between mx-lg-5">
            <span class="cart-info__icon mr-lg-3"><i class="fas fa-shopping-cart"></i></span>
            <p class="mb-0 text-capitalize"><span id="item-count">2 </span> items - $<span class="item-total">10.49</span></p>
          </div>
	 -->		
				</ul>
			
			</div>
			
			
		</nav>
		
		
        
         <section class="container content-section">
          
            <div class="shop-items">
                <div class="shop-item">
                    <span class="shop-item-title">Special Chocolate Cake</span>
                    <img class="shop-item-image" src="img/c17.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price">Rs.599</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
                    <span class="shop-item-title">Rich Chocolate Truffle</span>
                    <img class="shop-item-image" src="img/c2.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price"  ><strike>Rs.600</strike></span>
                         <span style="font-size:22px" class="colorchange1">Rs.450</span>
                        <button class="btn btn-primary shop-item-button"type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
                    <span class="shop-item-title">Blueberry Glaze Cake</span>
                    <img class="shop-item-image" src="img/c106.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price">Rs.699</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
            
            
            
             
                <div class="shop-item">
                    <span class="shop-item-title">Archies Heart-shaped Rose Cake</span>
                    <img class="shop-item-image" src="img/c100.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price"><strike>Rs.600</strike></span>
                         <span style="font-size:22px" class="colorchange1">Rs.450</span>
                        <button class="btn btn-primary shop-item-button"type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
                    <span class="shop-item-title">Red-Velvet</span>
                    <img class="shop-item-image" src="img/c10.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price">Rs.799</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                 <div class="shop-item">
                    <span class="shop-item-title">Chocolate Cream</span>
                    <img class="shop-item-image" src="img/c11.jpg">
                    <div class="shop-item-details">
                         <span style="font-size:22px" class="shop-item-price"><strike>Rs.600</strike></span>
                         <span style="font-size:22px" class="colorchange1">Rs.450</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                 <div class="shop-item">
                    <span class="shop-item-title">Chocolate Truffle</span>
                    <img class="shop-item-image"  src="img/c12.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price">Rs.699</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                 <div class="shop-item">
                    <span class="shop-item-title">Gourmet Coffee Chocolate Cake</span>
                    <img class="shop-item-image" src="img/c13.jpg">
                    <div class="shop-item-details">
                     <span style="font-size:22px" class="shop-item-price"><strike>Rs.600</strike></span>
                         <span style="font-size:22px" class="colorchange1">Rs.450</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                 <div class="shop-item">
                    <span class="shop-item-title">Death By Chocolate Cake</span>
                    <img class="shop-item-image" src="img/c14.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price">Rs.499</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                 <div class="shop-item">
                    <span class="shop-item-title">Chocolate Vanilla Cake</span>
                    <img class="shop-item-image" src="img/c105.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price">Rs.799</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                 <div class="shop-item">
                    <span class="shop-item-title">Black Forest</span>
                    <img class="shop-item-image" src="img/c16.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price"><strike>Rs.600</strike></span>
                         <span style="font-size:22px" class="colorchange1">Rs.450</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                 <div class="shop-item">
                    <span class="shop-item-title">Pineapple Cake</span>
                    <img class="shop-item-image" src="img/c103.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price">Rs.599</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                 <div class="shop-item">
                    <span class="shop-item-title">Anniversary Fondant Cake</span>
                    <img class="shop-item-image" src="img/c102.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price">Rs.699</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                
                 <div class="shop-item">
                    <span class="shop-item-title">White Forest Cake</span>
                    <img class="shop-item-image" src="img/c101.jpg">
                    <div class="shop-item-details">
                        <span style="font-size:22px" class="shop-item-price"><strike>Rs.600</strike></span>
                         <span style="font-size:22px" class="colorchange1">Rs.450</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
         
         
    
            
                    </div>            
           
        
        </section>
        
        
        
        
        
	<!-- <div class="main"> FOOTER DESIGN IN HTML CSS</div> -->
		<footer class="footer-distributed" id="section2">
 
		<div class="footer-left">
 
		<h3>Noor<span>Delights</span></h3>
 
		<p class="footer-links">
		<a href="index1.html">Home</a>
	
	·
		<a href="about.jsp">About</a>
	·
		<a href="#">Faq</a>
	·
		<a href="contactus.jpg">Contact</a>
		</p>
 
		<p class="footer-company-name">Noor Delights &copy; 2019</p>
		</div>
 
		<div class="footer-center">
 
		<div>
		<i class="fa fa-map-marker"></i>
		<p><span>90ft Revolution Street,</span>Kandivali(E), India</p>
		</div>
 
		<div>
		<i class="fa fa-phone"></i>
		<p>+91 7021355962</p>
		</div>
 
		<div>
		<i class="fa fa-envelope"></i>
		<p><a href="mailto:support@company.com">contact@noordelights.com</a></p>
		<img src="img/l4.jpg" style="position:relative; left:30px;">
        <span  class="colorchange" style="left:25px; position:relative">Noor Delights</span><br>
        <span style="left:-10px; position:relative" >Copyright &copy; 2020-3010</span>
		</div>
		
		</div>
 
		<div class="footer-right">
 		
       
		<p class="footer-company-about">
		<span>About the company</span>
	Welcome to The NOOR DELIGHTS,The Cake Shop is a family owned and operated business in Mumbai. We carefully select our ingredients for their freshness, flavor and natural value. We choose organic, locally grown products when available. Everything we make embodies our commitment to consistency and excellence. The heart of the bakery is a small, dedicated group of hard working bakers.
		</p>
 
		<div class="footer-icons">
 
		<a href="http://www.facebook.com"><i class="fa fa-facebook"></i></a>
		<a href="http://www.twitter.com"><i class="fa fa-twitter"></i></a>
		<a href="http://www.linkedin.com"><i class="fa fa-linkedin"></i></a>
		<a href="http://www.github.com"><i class="fa fa-github"></i></a>
 
		</div>
 
		</div>
 
		</footer>
	
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        </header>

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
</body>
</html>