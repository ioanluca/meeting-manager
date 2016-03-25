<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MEETING MANAGER</title>
</head>
<body>
	<%
	UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
    %>
	<h1>Meeting Manager</h1>
	<a href="<%= userService.createLogoutURL(request.getRequestURI()) %>">SIGN IN</a>


</body>
</html>