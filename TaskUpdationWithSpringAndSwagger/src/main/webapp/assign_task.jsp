<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <link rel="stylesheet" href="source/css/style.css">
   <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
      <form id="assigntask" method="post">
      
        <h1>Assign Task</h1>
        
        <fieldset>
         
          <label for="date">Date:</label>
          <input type="date" id="date" name="date">	
         	
         <label for="eid">Employee ID:</label>
          <input type="text" id="employeeId" name="employeeId">
         	
          <label for="name">Employee Name:</label>
          <input type="text" id="employeeName" name="employeeName">
          
          <label for="pname">Project Name:</label>
          <input type="text" id="projectName" name="projectName">
          
          <label for="mname">Module Name:</label>
          <input type="text" id="moduleName" name="moduleName">
		  
		  <label for="tname">Task Name:</label>
          <input type="text" id="taskName" name="taskName">
          
          <label for="des">Modal Description:</label>
          <textarea rows="3" cols="10" id="moduleDescription" name="moduleDescription">
          </textarea>
          
          <label for="hour">Actual Hours:</label>
          <input type="number" id="actualhours" name="actualhours">
          
           </fieldset>
        <input type="submit" id="btn-search" value="Proceed" />
		<input type="reset" id="reset" value="Reset">
      </form>
      
      <script>
		jQuery(document).ready(function($) {

			$("#assigntask").submit(function(event) {

				// Disble the search button
				enableSearchButton(false);

				// Prevent the form from submitting via the browser.
				event.preventDefault();

				searchViaAjax();

			});

		});

		function searchViaAjax() {

			var search = {}
			search["date"] = $("#date").val();
			search["employeeId"] = $("#employeeId").val();
			search["employeeName"] = $("#employeeName").val();
			search["projectName"] = $("#projectName").val();
			search["moduleName"] = $("#moduleName").val();
			search["taskName"] = $("#taskName").val();
			search["moduleDescription"] = $("#moduleDescription").val();
			search["actualhours"] = $("#actualhours").val();
			
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/assigntask",
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