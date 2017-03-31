<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jQuery v3.1.1.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<style>
#header{
width:100%;
height: 20px;
}
</style>
</head> 
<body>
<div id="header">
</div>
<br>
<br>
<h2 align="center">Employee Details</h2>
      
	<form action="LoadEmployee.do" method="POST"> 
		<table>
			<tr>
				<td>Select Month</td>
				<td><select id="month" name="month">
						<option>Select</option>
						<option value="jan">jan</option>
						<option value="feb">feb</option>
						<option value="mar">mar</option>
						<option value="apr">apr</option>
						<option value="may">may</option>
						<option value="jun">jun</option>
						<option value="july">july</option>
						<option value="agt">agt</option>
						<option value="sep">sep</option>
						<option value="oct">oct</option>
						<option value="nov">nov</option>
						<option value="dec">dec</option>
				  	</select></td>
			</tr>
			<tr>
				<td>Select Name</td>
				<td><select id="enames" name="enames"><option>Select Name</option></select></td>
				<td>Or <input type="text" name="ename" id="ename"></td>
			<tr>
				<td>Email Id</td>
				<td><input type="text" name="email" id="email" /></td>
			</tr>
			<tr>
				<td>Department</td>
				<td><input type="text" name="department" id="department" /></td>
			</tr> 
			<tr>
				<td>Mobile Number</td>
				<td><input type="text" name="mobile" id="mobile"/></td>
			</tr>
			<tr>
				<td> <html:submit property="method" value="Create"/></td>
				<td> <html:submit property="method" value="Update"/></td>
				<td> <html:submit property="method" value="Delete"/></td>
				<td> <html:reset property="method" value="Reset"/></td>
			</tr>
		</table>
		</form> 
	<script>

	$(function(){
		$("#header").load("Home2.jsp");
		 
		}); 
</script> 
	<script type="text/javascript">
		$(document).ready(function() {
			$('#month').change(function() {
				var m = $(this).val();
				$.ajax({
					type : "POST",
					url : "Load.do",
					data : "monthname=" + m,
					success : function(response) {
						var res = response.split(",");
						$('#enames').children('option:not(:first)').remove();
						if(response!="")
						{
						for (i = 0; i < res.length; i++)
						{
							$("#enames").append('<option value='+res[i]+'>'+res[i]+'</option>');
						}
						}
					}
				});
			});
			$('#enames').change(function() {
				var n = $(this).val();
				$.ajax({
					type : "POST",
					url : "LoadId.do",
					data : "name=" + n,
					success : function(response) {
						if(response!="")
						{
							var res = response.split(",");
							$('#email').val(res[0]);
							$('#department').val(res[1]);
							$('#mobile').val(res[2]);
						}
					}
				});
			});
		});
	</script> 
</body>
</html>