<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="source/css/style.css">
</head>
<body>
	<h1>Module Details</h1>
	<form  id="module">
	<table>
		<tr>
			<td>Module Name</td>
			<td><input type="text" id="Module_name"></td>
		</tr>
		<tr>
			<td>Description</td>
			<td><textarea id="Description"></textarea></td>
		</tr>
		<tr>
			<td><input type="submit" value="submit" id="s"></td>
			<td><input type="reset" id="r" value="reset"></td>
		</tr>
	</table>
	
	</form>
	
	<script>
		jQuery(document).ready(function($) {

			$("#module").submit(function(event) {

				// Disble the search button
				enableSearchButton(false);

				// Prevent the form from submitting via the browser.
				event.preventDefault();

				searchViaAjax();

			});

		});

		function searchViaAjax() {

			var search = {}
		
			search["module_name"] = $("#Module_name").val();
			alert( $("#Module_name").val());
			
			search["description"] = $("#Description").val();
			
			
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/addmodule",
 				data : JSON.stringify(search),
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					alert();
					console.log("SUCCESS: ", data);
					display(data);
				},
				error : function(e) {
					console.log("ERROR: ", e);
					display(e);
				},
				done : function(e) {
					console.log("DONE");
					enableSearchButton(true);
				}
			});

		}

		function enableSearchButton(flag) {
			$("#s").prop("disabled", flag);
		}

		function display(data) {
			var json = "<h4>Ajax Response</h4><pre>"
					+ JSON.stringify(data, null, 4) + "</pre>";
			$('#feedback').html(json);
		}
	</script>
	
	
</body>
</html>