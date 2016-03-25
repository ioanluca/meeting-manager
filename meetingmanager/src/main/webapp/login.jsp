<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MEETING MANAGER</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="/stylesheets/login.css"/>
<link type="text/css" rel="stylesheet" href="/stylesheets/freelancer.css"/>
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<%
	UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
%>
<body>
	<header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="img/profile.png" alt="">
                    <div class="intro-text">
                        <span class="name">Meeting Manager</span>
                        <hr class="star-light">
                        <a class="btn btn-lg btn-success" href="<%= userService.createLoginURL(request.getRequestURI()) %>" role="button">SIGN IN</a>
                    </div>
                </div>
            </div>
        </div>
    </header>
	
    
<%	
	if(user != null) {
		response.sendRedirect("index.jsp");
	}
%>

</body>
</html>