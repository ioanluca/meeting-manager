<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ page import="com.google.appengine.api.users.User"%>
<%@ page import="com.google.appengine.api.users.UserService"%>
<%@ page import="com.google.appengine.api.users.UserServiceFactory"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="/js/vendor/jquery.min.js"><\/script>')
</script>
<script src="/meetingmanager/src/main/webapp/js/isotope.pkgd.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/ie10-viewport-bug-workaround.js"></script>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/stylesheets/index.css" rel="stylesheet">
<title>Meeting manager</title>

</head>



<body>



	<%
		UserService userService = UserServiceFactory.getUserService();
		User user = userService.getCurrentUser();
		if (user != null) {
			pageContext.setAttribute("user", user);
	%>


	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<div class="well well-sm titlewelcome">
					<h1>Meeting Manager</h1>

					<h4>Hello, ${fn:escapeXml(user.nickname)}!</h4>
					<a href="<%=userService.createLogoutURL(request.getRequestURI())%>">
						<button type="button" class="btn btn-lg btn-success ">
							<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
							Log Out
						</button>
					</a>
				</div>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="#section1">Home</a></li>
					<li><a href="#section2">Friends</a></li>
					<li><a href="#section3">Family</a></li>
					<li><a href="#section3">Photos</a></li>
				</ul>
				<br>

			</div>

			<div class="col-sm-9"></div>

			<footer class="container-fluid">
			
			<div class="grid">
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
				<div class="grid-item grid-item--width2 grid-item--height2"></div>
			</div>

			</footer>


			<%
				} else {
					response.sendRedirect("login.jsp");

				}
			%>
		
</body>
</html>