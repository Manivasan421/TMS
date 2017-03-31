<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <link rel="stylesheet" href="source/css/home_style.css">
</head>
<body background="source/img/back.jpg">
<image src="source/img/kumar.png" height="70px" width="210px">
<h3>TIME SHEET MANAGEMENT SYSTEM</h3>
<image src="source/img/logo.jpg" height="70px" width="210px" align="right">
<div class="top">
<ul>
  <li><a href="CreateTeam.jsp" target="iframe_a">CreateTeam</a></li>
  <li><a href="ProjectResource.jsp" target="iframe_a">Project Resource</a></li>
  <li><a href="assign_task.jsp" target="iframe_a">Assign Task</a></li>
  <li><div id="box1">Welcome&nbsp<%=session.getAttribute("name") %></div></li>
  <li><a href="logout.jsp" id="ll">Logout</a></li>
</ul>
</div>
<iframe height="600px" width="100%" src="UI.jsp" name="iframe_a"></iframe>
</body>
</html>