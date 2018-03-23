<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Contact Us</title>
<link rel="stylesheet" type="text/css" href="index.css" />
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<link rel="stylesheet" type="text/css" href="index.css" />
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="autocompleter.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="scripts/prettyPhoto.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="css/contact.css">
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
		
<div class="grid-row">					
					<div class="grid-col grid-col-6">
						<!-- contacts -->
						<div class="contacts">
							<h3>Our Offices</h3>
							<p>Duis sed diam ipsum. Quisque congue odio id ipsum pharetra feugiat. Nam volutpat dui vitae felis vestibulum bibendum. Phasellus hendrerit, metus eget consectetur aliquam, nisl massa facilisis nisi, vel sagittis sem tellus eget magna. Nullam ac ligula in leo volutpat dignissim. Praesent interdum quis quam vitae mollis. Proin sit amet bibendum dui.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rhoncus ultricies euismod. Vestibulum ante ipsum primis in faucibus orci luctus.</p>
							<p><span>Address:</span>Interdum et malesuada fames ac ante ipsum primis in faucibus malesuada</p>
							<p><span>Phone number:</span>(879) 166-7463<br>(880) 277-3259</p>
							<p><span>E-mail:</span>lavishsinghal110@gamil.com,<br>jaswant4321@outlook.com</p>
						</div>
						<!--/ contacts -->
					</div>
					
					<div class="grid-col grid-col-4">						
						<!-- feedback -->
						<div class="feedback">
							<div class="composer">
								<div id="email_server_responce"></div>
							</div>
							<form action="feedback" method="post" id="feedback-form">
								<label>Your Name (required):</label>
								<input type="text" name="name">
								<label>Your E-Mail (required):</label>
								<input type="email" name="email">
								<label>Your Website:</label>
								<input type="url" name="url">
								<label>Your Message (required):</label>
								<textarea cols="30" rows="10" name="message"></textarea>
								<button type="submit" class="button">Send</button>
							</form>
						</div>
						<!--/ feedback -->
					</div>
				</div></div></div>

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
