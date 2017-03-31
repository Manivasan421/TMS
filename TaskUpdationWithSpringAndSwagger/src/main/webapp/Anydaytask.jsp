<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="source/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	 
</head>
<body>
 
	<form id="search-form">
 
		<h1>Any Day Task</h1>
 
			Date:<input type="date" id="Date" name="Date" > project:
			 <select id="Project" name="Project" >
				<option value="Select Project">Select Project</option>
				<option value="internal Project">internal Project</option>
				<option value="timesheet Project">Timesheet Project</option>
		     	</select>
		     	
		     	
		     <label for="task">Task Type:</label> <select id="Task" name="Task">
				<option value="Select Task Type">Select Task Type</option>
				<option value="Debug ">Debug</option>
				<option value="analysis ">Analysis</option>
				<option value="coding">coding</option>
				<option value="Testing">Testing</option>
			</select> <label for="product">Product Type:</label> <select id="Product"
				name="Product">
				<option value="Select Product Type">Select Product Type</option>
				<option value="a">Abc</option>
				<option value="b">Cdf</option>
				<option value="c">Fgh</option>

			</select> <label for="product">Task Description:</label>
			<textarea id="TaskDescription" name="TaskDescription"></textarea>

			<label for="product">Assign Hour:</label> <input id="Assignhours"
				name="Assignhours" type="text" /> <label for="product">Actual
				Hour:</label> <input id="Actualhours" name="Actualhours" type="text" /> <label
				for="product">Status:</label> <select id="Status" name="Status">
				<option value="Select Status">Select Status</option>
				<option value="Not Started">Not Started</option>
				<option value="Completed">Completed</option>
				<option value="Hold">Hold</option>
				<option value="In Progress">In Progress</option>
				<option value="Swapped">Swapped</option>
			</select>

		
		<input type="submit" id="btn-search" value="Submit" />
		<input type="reset" id="reset" value="Reset">
	</form>
	
	
	<script>
		var str=<%=request.getParameter("id")%>
		alert(str);
		jQuery(document).ready(function($) {

			$
			.ajax({
				type : "GET",
				contentType : "application/xml",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/update/"+str,
				dataType : 'json',
				success : function(res) {
					alert();
					
					/* var obj = $
							.parseJSON(JSON
									.stringify(response));
						alert(obj); */
						alert(JSON.stringify(res));
						$('#Date').val(res["date"]);
						$('#Project').append('<option value='+res["project"]+'>'+res["project"]+'</option>').selected;
						$('#Task').append('<option value='+res["task"]+'>'+res["task"]+'</option>').select;
						$('#Product').append('<option value='+res["product"]+'>'+res["product"]+'</option>').select;
						$('#TaskDescription').val(res["taskdescription"]);
						$('#Assignhours').val(res["assignedhours"]);
						$('#Actualhours').val(res["actualhours"]);
						$('#Status').append('<option value='+res["status"]+'>'+res["status"]+'</option>').select;
					
				
				}
			});

		});
		 
		jQuery(document).ready(function($) {

			$("#search-form").submit(function(event) {

				// Disble the search button
				enableSearchButton(false);

				// Prevent the form from submitting via the browser.
				event.preventDefault();

				searchViaAjax();

			});

		});

		function searchViaAjax() {

			var search = {}
			search["date"] = $("#Date").val();
			search["project"] = $("#Project option:selected").text();
			search["task"] = $("#Task option:selected").text();
			search["product"] = $("#Product option:selected").text();
			search["taskDescription"] = $("#TaskDescription").val();
			search["assignhours"] = $("#Assignhours").val();
			search["actualhours"] = $("#Actualhours").val();
			search["status"] = $("#Status option:selected").text();
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/addStatus",
 				data : JSON.stringify(search),
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					alert("success");
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
			$("#btn-search").prop("disabled", flag);
		}

		 function display(data) {
			 
			var json = "<h4>Ajax Response</h4><pre>"
					+ JSON.stringify(data, null, 4) + "</pre>";
			$('#feedback').html(json);
		  }  
			/* function display(data)
			{   
			    alert(data);
				alert(data.id)
			    alert(JSON.stringify(data).replace(',', ', ').replace('[', '').replace(']', ''));
				
			} */
		
	</script>
 
</body>
</html>

