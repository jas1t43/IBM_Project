<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@page import="bean.iteminfo"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="sun.reflect.ReflectionFactory.GetReflectionFactoryAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Electro Zone</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link rel="stylesheet" type="text/css" href="index.css" />
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="autocompleter.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
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
				String uid=(String)s.getAttribute("uid");
				if(a!=null)
				{
				
					%>
				
				<style type="text/css">
    ul.l{
        padding: 0;
        list-style: none;
       /*  background: #f2f2f2; */
    }
    ul.l li{
        display: inline-block;
        position: relative;
        line-height: 21px;
        text-align: center; 
    }
    ul.l li a{
        display: block;
        padding: 0px 35px;
        color: white;
        text-decoration: none;
    }
    ul.l li a:hover{
        color: #fff;
        background: #939393;
    }
    ul.l li ul.dropdown{
        min-width: 150px; /* Set width of the dropdown */
        background: Black;
        display: none;
        position: absolute;
         /* z-index: 99; */
         left: 0; 
    }
    ul.l li:hover ul.dropdown{
        display: block;	/* Display the dropdown */
        /* width: 200; */
    }
     ul.l li ul.dropdown li{
        display: block;
    } 
</style>
				
				<li><ul class="l">
        <li>
            <a href="#">Hi <%=a %></a>
            <ul class="dropdown">
                <li><a href="Password.jsp">Change Password</a></li>
                <li><a href="#">Wishlist</a></li>
                <li><a href="logout">Logout</a></li>
            </ul>
        </li>
    </ul></li><%}else{ %>
				<li><a href="login.jsp">Login/Signup</a><%} %>
				<li><a href="ContactUs.jsp">Contact Us</a></li>
				<li><a href="index.jsp" class="active">Home</a></li>																																																			
				
			</ul>
			<div id="search">
				Product Search<br />																																																							
				<form action="search" method="post" style="width: 250px">
				<!-- 	<select name="category">
						<option>Laptops and Notebooks</option>
						<option>Mobile</option>
						<option>Desktops</option>
						<option>Cameras</option>
						<option>Tablets</option>
						<option>Mobile Accessories</option>					
						<option>Computer Accessories</option>
						</select> -->
					 <div class="search-container">
		<div class="ui-widget">
			<input type="text" id="instantsearch" name="instantsearch" class="instantsearch" size="55" />
		 </div>
	</div>
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

	<img SRC="images/slides/slide1.png" height="341" width="578" />
	<img SRC="images/slides/slide2.png" height="341" width="578" />
	<img SRC="images/slides/slide3.png" height="341" width="578" />
	<img SRC="images/slides/slide4.png" height="341" width="578" />
	<img SRC="images/slides/slide5.png" height="341" width="578" />
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
					
					<div id="items">
					<%
						ResultSet rs=(ResultSet)request.getAttribute("searched");
					if(rs!=null)
					{
						while(rs.next()){
						%>
						<div class="item">
							<h5><a href="buy?pid=<%=rs.getString(1)%>"><font color="#D9A83C"><%=rs.getString(7)%> <%=rs.getString(2)%> <%=rs.getString(4)%></font></a></h5>
							<div class="itemimage">
								<a href="buy?pid=<%=rs.getString(1)%>"><img src="<%=request.getContextPath()%>/fetch?id=<%=rs.getString(1) %>" alt="" width="150" height="159" /></a><br />
								<p class="more"><a href="buy?pid=<%=rs.getString(1)%>">more info</a></p>
							</div>
							<div class="price">
								<p><span class="new"><%=rs.getString(6)%></span><span class="old"><strike><%=rs.getString(5)%></strike></span></p><br />
								<form action="#" class="button">
									<a href="buycheck?id=<%=rs.getString("Pid")%>"><img src="images/buy.jpg" alt="" width="53" height="23" /></a>
									&nbsp;&nbsp;&nbsp;<a href="inde?id=<%=rs.getString("Pid")%>"><img src="images/cart.png" alt="" width="45" height="28" /></a>
								</form>
							</div>
						</div>
					<% }
						} 	
					else{ %>
					  <div class="item">
							<h5><a href="buy?pid=162"><font color="#D9A83C">Samsung Galaxy S6(Gold Platinum,64GB)</font> </a></h5>
							<div class="itemimage">
								<a href="buy?pid=162"><img src="<%=request.getContextPath()%>/fetch?id=162" alt="" width="150" height="159" /></a><br />
								<p class="more"><a href="buy?pid=162">more info</a></p>
							</div>
							<div class="price">
								<p><span class="new">47900</span><span class="old"><strike>49990</strike></span></p><br />
								<form action="#" class="button">
									<a href="buycheck?id=162"><img src="images/buy.jpg" alt="" width="53" height="23" /></a>
									&nbsp;&nbsp;&nbsp;<a href="inde?id=162"><img src="images/cart.png" alt="" width="45" height="28" /></a>
								</form>
							</div>
						</div>
						<div class="item">
							<h5><a href="buy?pid=13"><font color="#D9A83C">Apple iMac(MF886HN)</font></a></h5>
							<div class="itemimage">
								<a href="buy?pid=13"><img src="<%=request.getContextPath()%>/fetch?id=13" alt="" width="150" height="159" /></a><br />
								<p class="more"><a href="buy?pid=13">more info</a></p>
							</div>
							<div class="price">
								<p><span class="new">174113</span><span class="old"><strike>179900</strike></span></p><br />
								<form action="#" class="button">
									<a href="buycheck?id=13"><img src="images/buy.jpg" alt="" width="53" height="23" /></a>
									&nbsp;&nbsp;&nbsp;<a href="inde?id=13"><img src="images/cart.png" alt="" width="45" height="28" /></a>
								</form>
							</div>
						</div>
						<div class="item">
							<h5><a href="buy?pid=23"><font color="#D9A83C">Apple iPhone 6 Plus</font></a></h5>
							<div class="itemimage">
								<a href="buy?pid=23"><img src="<%=request.getContextPath()%>/fetch?id=23" alt="" width="150" height="159" /></a><br />
								<p class="more"><a href="buy?pid=23">more info</a></p>
							</div>
							<div class="price">
								<p><span class="new">74999</span><span class="old"><strike>83000</strike></span></p><br />
								<form action="#" class="button">
									<a href="buycheck?id=23"><img src="images/buy.jpg" alt="" width="53" height="23" /></a>
									&nbsp;&nbsp;&nbsp;<a href="inde?id=23"><img src="images/cart.png" alt="" width="45" height="28" /></a>
								</form>
							</div>
						</div>
						<div class="item">
							<h5><a href="buy?pid=86"><font color="#D9A83C">Razer Razor-Blade Pro</font></a></h5>
							<div class="itemimage">
								<a href="buy?pid=86"><img src="<%=request.getContextPath()%>/fetch?id=86" alt="" width="150" height="159" /></a><br />
								<p class="more"><a href="buy?pid=86">more info</a></p>
							</div>
							<div class="price">
								<p><span class="new">135000</span><span class="old"><strike>138000</strike></span></p><br />
								<form action="#" class="button">
									<a href="buycheck?id=86"><img src="images/buy.jpg" alt="" width="53" height="23" /></a>
									&nbsp;&nbsp;&nbsp;<a href="inde?id=86"><img src="images/cart.png" alt="" width="45" height="28" /></a>
								</form>
							</div>
						</div>
						<div class="item">
							<h5><a href="buy?pid=123"><font color="#D9A83C">Beats by Dr.Dre Pro Wired Headphones</font></a></h5>
							<div class="itemimage">
								<a href="buy?pid=123"><img src="<%=request.getContextPath()%>/fetch?id=123" alt="" width="150" height="159" /></a><br />
								<p class="more"><a href="buy?pid=123">more info</a></p>
							</div>
							<div class="price">
								<p><span class="new">31500</span><span class="old"><strike>33000</strike></span></p><br />
								<form action="#" class="button">
									<a href="buycheck?id=123"><img src="images/buy.jpg" alt="" width="53" height="23" /></a>
									&nbsp;&nbsp;&nbsp;<a href="inde?id=123"><img src="images/cart.png" alt="" width="45" height="28" /></a>
								</form>
							</div>
						</div>
						<div class="item">
							<h5><a href="buy?pid=100"><font color="#D9A83C">Dell Alienware 17</font></a></h5>
							<div class="itemimage">
								<a href="buy?pid=100"><img src="<%=request.getContextPath()%>/fetch?id=100" alt="" width="150" height="159" /></a><br />
								<p class="more"><a href="buy?pid=100">more info</a></p>
							</div>
							<div class="price">
								<p><span class="new">189990</span><span class="old"><strike>199999</strike></span></p><br />
								<form action="#" class="button">
									<a href="buycheck?id=100"><img src="images/buy.jpg" alt="" width="53" height="23" /></a>
									&nbsp;&nbsp;&nbsp;<a href="inde?id=100"><img src="images/cart.png" alt="" width="45" height="28" /></a>
								</form>
							</div>
						</div><%} %>
					</div>
				</div>
				<div id="right">
					<h4 class="title2"><img src="images/cart.gif" alt="" width="18" height="19" class="cart" />Shopping Cart</h4>
					<div class="bag">
					<%
				int item=(Integer)s.getAttribute("item");
				if(item==0)
				{%>
				There are no items in <br> your shopping bag<br>
				 
				<%} 
				else {%>
				<%=item%> Item in your cart<%} %>
						<a href="cart.jsp">Shopping Bag</a>
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
				<li><a href="ContactUs.jsp">Contacts</a>|</li>
			<!-- 	<li><a href="#">My Account</a>|</li>
				<li><a href="#">Track Order</a>|</li> -->
			</ul><center>
			<p id="bft">Copyright &copy;. All rights reserved. Design by <a href="#" target="_blank" title="Best Free Templaes">Lavish Singhal and Jaswant Sharma</a></p></center>		                              																																																					<div class="inner_copy"><a href="http://www.webbuildersguide.com/website-builder-categories/ecommerce-website-builders/" rel="nofollow">http://www.webbuildersguide.com/website-builder-categories/ecommerce-website-builders/</a></div>
		</div>
	</div>
</body>
</html>
