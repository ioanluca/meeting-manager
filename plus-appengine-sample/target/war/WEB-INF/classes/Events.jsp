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
<script src="/js/isotope.pkgd.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/ie10-viewport-bug-workaround.js"></script>
<script src="/js/responsive-calendar.js"></script>

<link href="/stylesheets/responsive-calendar.css" rel="stylesheet"
	media="screen">
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/stylesheets/Events.css" rel="stylesheet">
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
					<li class="active"><a href="index.jsp">Home</a></li>
					<li><a href="#section2">Friends</a></li>
					<li><a href="#section3">Events</a></li>
					<li><a href="#section3">Photos</a></li>
				</ul>
				<br>

			</div>

			<div class="col-sm-9">



				<div class="container">
					<h1>Date</h1>

					<div id='calendar'></div>
				</div>
			</div>



		</div>
		<footer class="container-fluid">
		
	<script>	
	$.getScript('http://arshaw.com/js/fullcalendar-1.6.4/fullcalendar/fullcalendar.min.js',function(){
		  
		  var date = new Date();
		  var d = date.getDate();
		  var m = date.getMonth();
		  var y = date.getFullYear();
		  
		  $('#calendar').fullCalendar({
		    header: {
		      left: 'prev,next today',
		      center: 'title',
		      right: 'month,agendaWeek,agendaDay'
		    },
		    editable: true,
		    events: [
		      {
		        title: 'All Day Event',
		        start: new Date(y, m, 1)
		      },
		      {
		        title: 'Long Event',
		        start: new Date(y, m, d-5),
		        end: new Date(y, m, d-2)
		      },
		      {
		        id: 999,
		        title: 'Repeating Event',
		        start: new Date(y, m, d-3, 16, 0),
		        allDay: false
		      },
		      {
		        id: 999,
		        title: 'Repeating Event',
		        start: new Date(y, m, d+4, 16, 0),
		        allDay: false
		      },
		      {
		        title: 'Meeting',
		        start: new Date(y, m, d, 10, 30),
		        allDay: false
		      },
		      {
		        title: 'Lunch',
		        start: new Date(y, m, d, 12, 0),
		        end: new Date(y, m, d, 14, 0),
		        allDay: false
		      },
		      {
		        title: 'Birthday Party',
		        start: new Date(y, m, d+1, 19, 0),
		        end: new Date(y, m, d+1, 22, 30),
		        allDay: false
		      },
		      {
		        title: 'Click for Google',
		        start: new Date(y, m, 28),
		        end: new Date(y, m, 29),
		        url: 'http://google.com/'
		      }
		    ]
		  });
		})
		</script>

		<h1>footer</h1>

		</footer>


		<%
			} else {
				response.sendRedirect("login.jsp");

			}
		%>
	
</body>
</html>