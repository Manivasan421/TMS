<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <link rel="stylesheet" href="source/css/project_style.css">	
	<script>
		function Display()
		{
			document.getElementById('frame1').src="add_product.jsp";
		}
		function Display1()
		{
			document.getElementById('frame1').src="add_module.jsp";
		}
		function Display2()
		{
			document.getElementById('frame1').src="add_task.jsp";
		}
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript">
function myFunction()
{
	
	pdffile=document.getElementById("file").files[0];
    pdffile_url=URL.createObjectURL(pdffile);
    $('#frame2').attr('src',pdffile_url);
}


</script>
</head>
<body>

	
	<div  id="div1">
	<ul id="ul2">
		<li onclick="Display()">Add Product</li>
	    <li onclick="Display1()">Add Module</li>
		<li onclick="Display2()">Add Task</li>
	</ul>
	</div>
	<div id="file1">
	
	<table>
	<tr>
	<td><b>Project Document</b></td>
	<td><input type="file" id="file"></td>
	<td><input type="submit" onclick="myFunction()" value="ok"></td>
	</tr>
	</table>
	</div>
	<div class="frame1">
	<iframe id='frame1' frameBorder="1" height="200" width="300"></iframe>
	</div>
	<div class="frame2">
	<iframe id='frame2' frameBorder="1"></iframe>
	</div>
	</body>
</html>