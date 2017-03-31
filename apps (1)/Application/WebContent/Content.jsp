<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
ul {
    list-style-type: none;
    margin: 10%;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
iframe
{
	background:;
	position:absolute;
	left:16%;
	width:80%;
	height:100%;
	top:5%;
}
</style>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>


<style>

#header{

width: 600px;
height: 20px;


}

</style>

</head>
<body>

<div id="header">
</div>

<ul>
  <li><a class="active" href="Employee Details.jsp">Employee Details</a></li>
  <li><a href="Project Details.jsp"  target="content">Project Details</a></li>
</ul>

	<script>
 /* 
	$(function(){
		$("#header").load("Home2.jsp");
		 
		}); */
 


</script>

</body>
</html>