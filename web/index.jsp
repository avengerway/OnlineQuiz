<%-- 
    Document   : index
    Created on : Mar 30, 2017, 11:21:57 PM
    Author     : Piyush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<style>
			@import "ss.css";<!-- link can also be used-->
		</style>
	</head>
	<body>
	
		<div id="container" style="background-color:red"><!-- container start-->
		
			<div id="header"  ><!-- header start -->
                             
                            <p style="background-color:red"><strong>ONLINE&nbsp;&nbsp;QUIZ</strong></p>
			</div><!--header end -->
			
			<div id ="navigation"><!-- navigation start-->
				<ul>
					
	                <li><a href =""> ABOUT US </a></li>
					
					<li><a href = "loginuser.jsp">SIGN IN</a></li>
					<li><a href = "signuppage.jsp">SIGN UP</a><li>
					
				</ul>
			</div><!-- end navigation-->
			
			<div id="banner">
                            <img src="images/quiz.png" height="400" width="1300"/>
			</div>
			
			
			
			<div style="padding:13px;text-align:center;background:teal;color:white;">
				<p style=font-size:25px>Copyright @ 2017</p><!-- inline css use -->
			</div>
			
		</div>
	</body>
</html>