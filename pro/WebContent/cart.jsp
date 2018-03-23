<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@page import="bean.iteminfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="sun.reflect.ReflectionFactory.GetReflectionFactoryAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Your Cart</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link rel="stylesheet" type="text/css" href="index.css" />
	<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="scripts/prettyPhoto.css" type="text/css" media="screen" />
<script type="text/javascript">
function transparent(im)
   {
   if (!im.transparented && (/\.png/.test(im.src)))
      {
      im.transparented = 1;
      var picture = im.src;
      var w = im.width;
      var h = im.height;
      im.src = "images/spacer.gif";
      im.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod='scale', src='" + picture + "');";
      im.width = w;
      im.height = h;
      }
   return "transparent";
   }
</script>
</head>

<body><center>
 <%
								String m=(String)request.getAttribute("msg");
								if(m!=null)
								{
									%>
								<%=m %><hr>
								<%} %></center>
	<div id="content">
		<div id="header"> 
			<ul class="top_menu">
				<%
					HttpSession s=request.getSession(false);
				String a= (String)s.getAttribute("usr");
				if(a!=null)
				{
				
					%>
				
				
				<li><a href="#">Hi  <%=a %></a></li><%}else{ %>
				<li><a href="login.jsp">Login/Signup</a><%} %>
				<li><a href="ContactUs.jsp">Contact Us</a></li>
				<li><a href="index.jsp" class="active">Home</a></li>																																																			
				
			</ul>
			<div id="search">
				Product Search<br />																																																							
				<form action="search" method="post">
					<select name="category">
						<option>Laptops and Notebooks</option>
						<option>Mobile</option>
						<option>Desktops</option>
						<option>Cameras</option>
						<option>Tablets</option>
						<option>Mobile Accessories</option>					
						<option>Computer Accessories</option>
						</select>
					<input type="text" name="search">
					<input type="submit" value="ok"> 																																																																																								
			</form>
			</div>
			<img src="images/tel.jpg" alt="" width="181" height="13" class="tel" />
		</div>
		<div id="wrapper">
			<div id="background">
				<div id="left">
					<h4 class="title1">Shop by category</h4>
					<ul id="list">
						<li><a href="search?category=Laptops+and+Notebooks&search=" class="type1">Laptops and Notebooks</a></li>
						<li><a href="search?category=Mobiles&search=" class="type2">Mobile</a></li>
						<li><a href="search?category=Desktops&search=" class="type1">Desktops</a></li>
						<li><a href="search?category=Cameras&search=" class="type2">Cameras</a></li>
						<li><a href="search?category=Tablets&search=" class="type1">Tablets</a></li>
						<li><a href="search?category=Mobile+Accessories&search=" class="type2">Mobile Accessories</a></li>
						<li><a href="search?category=Computer+Accessories&search=" class="type1">Computer Accessories</a></li>
							</ul>
					<h4 class="title2">News &amp; Events</h4>
					<div class="news">
						<span>29 november</span>
						<p>Lorem ipsum dolor sit amet, sectetu adip scing varius interdum incid unt quis, libero. Aenean mturpis. Maecenas hendrerit masa laoreet iaculipede mnisl ulamcorper. </p>
						<a href="#" class="more">read more</a>
					</div>
					<div class="news">
						<span>17 november</span>
						<p>Maecenas hendrerit masa laoreet iaculipede mnisl ulamcorper. </p>
						<a href="#" class="more">read more</a>
					</div>
					<div class="news">
						<span>05 november</span>
						<p>Lorem ipsum dolor sit amet, sectetu adip scing varius interdum incid unt quis, libero. Aenean mturpis. Maecenas hendrerit masa laoreet iaculipede mnisl ulamcorper. </p>
						<a href="#" class="more">read more</a>
					</div>
				</div>
				<div id="center">
					<div id="discount">
						<img src="images/discount.png" alt="" width="121" height="119" border="0" usemap="#Map" class="transparent" />
						<map name="Map">
						  <area shape="circle" coords="61,57,55" href="#">
						</map>
					</div>
					<div id="photo">
						<div id="slider">
	<a class="tooltip" HREF="../../themeforest.net/item/wordpress-hud/96049@ref=themolitor" title="Buy this theme!">
	<img SRC="images/slides/slide1.png" height="341" width="578" /></a>
	<a class="tooltip" HREF="post.html" title="9 slider effects">
	<img SRC="images/slides/slide3.png" height="341" width="578" /></a>
	<a class="tooltip" HREF="post.html" title="20 built-in patterns">
	<img SRC="images/slides/slide4.png" height="341" width="578" /></a>
	<a class="tooltip" HREF="post.html" title="Built-in login and contact form">
	<img SRC="images/slides/slide5.png" height="341" width="578" /></a>
</div>
					</div> 
					<script SRC="scripts/scripts.js" type="text/javascript"></script>
<script type="text/javascript">
jQuery.noConflict(); jQuery(document).ready(function(){
	//SLIDER STUFF
	jQuery('#slider').fadeIn(400).nivoSlider({
		effect:'random',
		slices:15,
		animSpeed:500,
		pauseTime:5000,
		directionNav:true,
		directionNavHide:false, //Only show on hover
		controlNav:true, //1,2,3...
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		beforeChange: function(){},
		afterChange: function(){}
	});	
	var negativemargin = jQuery(".nivo-controlNav").outerWidth() / 2;
	jQuery(".nivo-controlNav").css("marginLeft",-negativemargin);
		
});
</script>
					
					<center><font color="white">
					<img alt="" src="images/cart.png" height="50"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u color="white"><font size ="50">Your Cart</font></u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt="" src="images/cart.png" height="50" style="z-index: 20"><br><br>
					<table border=1 bordercolor="brown" width="550">
					<tr><th>Product</th><th>Product Description</th><th>Unit price</th><th>Remove</th></tr>
					
					<%ArrayList<iteminfo> items=(ArrayList<iteminfo>)s.getAttribute("items");
						
					for(iteminfo item:items){
					%>
					<tr><th><%=item.getImage() %></th><th><%=item.getBrand() %> <%=item.getItemname() %> <%=item.getModel() %></th><th><%=item.getPrice()%></th><th><a href="remove/id=<%=item.getId()%>"><input type ="checkbox"></a></th></tr>
					<%} %>
					
					</table>
					<br><br>
					<a href="index.jsp"><img alt="" src="images/continue-shopping.jpg" height="50" width="200"></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="buycheck"><img alt="" src="images/Place.jpg" height="50" width="200"></a> 
					</font></center>
					
				</div>
				<div id="right">
					<h4 class="title2"><img src="images/cart.gif" alt="" width="18" height="19" class="cart" />Shopping Cart</h4>
					<div class="bag">
					<%
				int b= (Integer)s.getAttribute("item");
				if(b==0)
				{%>
				There are no items in <br> your shopping bag<br>
				 
				<%} 
				else {%>
				<%=b %> Item in your cart<%} %>
						<a href="#">Shopping Bag</a>
					</div>
					<h4 class="title3">Entry</h4>
					<form action="log" method="post">
					<div class="entry">
							 <%
								String ul=(String)request.getAttribute("unlog");
								if(ul!=null){
									%>
								<%= ul%><br><%} %>
							Login<br />
							<input type="text" name="uname" /><br />
							Password<br />
							<input type="password" name="pname"/><br />
							<a href="#" class="forgot">Forgot password</a>
					
						
					</div>
							<p class="below"><a href="login.jsp">Register</a> <input type="submit" value="Enter" /></p>
					</form>
					<h4 class="title3">Shop by brand</h4>
					<ul class="brands">
						<li class="color"><a href="search?category=Acer&search=">Acer</a></li>
						<li><a href="search?category=Apple&search=">Apple</a></li>
						<li class="color"><a href="search?category=Asus&search=">Asus</a></li>
						<li><a href="search?category=Canon&search=">Canon</a></li>
						<li class="color"><a href="search?category=Dell&search=">Dell</a></li>
						<li><a href="search?category=Honor&search=">Honor</a></li>
						<li class="color"><a href="search?category=HP&search=">HP</a></li>
						<li><a href="search?category=Lenovo&search=">Lenovo</a></li>
						<li class="color"><a href="search?category=Mi&search=">Mi</a></li>
						<li><a href="search?category=Motorola&search=">Motorola</a></li>
						<li class="color"><a href="search?category=nikon&search=">Nikon</a></li>
						<li><a href="search?category=Nokia&search=">Nokia</a></li>
						<li class="color"><a href="search?category=Samsung&search=">Samsung</a></li>
						<li><a href="search?category=Sony&search=">Sony</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div>
			<ul>
				<li><a href="index.jsp">Home</a>|</li>
				<li><a href="#">Offers</a>|</li>
				<li><a href="#">Contacts</a>|</li>
			<!-- 	<li><a href="#">My Account</a>|</li>
				<li><a href="#">Track Order</a>|</li> -->
			</ul>
			<p id="bft">Copyright &copy;. All rights reserved. Design by <a href="#" target="_blank" title="Best Free Templaes">Lavish Singhal</a></p>			                              																																																					<div class="inner_copy"><a href="http://www.webbuildersguide.com/website-builder-categories/ecommerce-website-builders/" rel="nofollow">http://www.webbuildersguide.com/website-builder-categories/ecommerce-website-builders/</a></div>																											
		</div>
	</div>
</body>
</html>
					