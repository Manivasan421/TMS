<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <link rel="stylesheet" href="source/css/style.css">
   <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
      <form id="createteam" method="post">
      
        <h1>Create Team</h1>
        
        <fieldset>
         
          <label for="pname">Project Name:</label>
          <input type="text" id="projectName" name="projectName">
          
          <label for="tid">Team ID:</label>
          <input type="text" id="teamID" name="teamID">
          
          <label for="org">Team Lead Name:</label>
          <input type="text" id="teamLeadName" name="teamLeadName">
		  
		  <label for="sdate">Start Date:</label>
          <input type="date" id="startDate" name="startDate">
          
          <label for="edate">End Date:</label>
          <input type="date" id="endDate" name="endDate">
          
           <label for="eid">Employee ID:</label>
          <select id="employeeId" name="employeeId">
          <option>Select Employee ID</option>
          </select>  
          
          <label for="ename">Employee Name:</label>
          <input type="text" id="employeeName" name="employeeName">
          
          <label for="role">Employee Role:</label>
          <input type="text" id="employeeRole" name="employeeRole">
          
          <label for="experience">Experience:</label>
          <input type="number" id="experience" name="experience">
          
          <label for="rating">Rating:</label>
          <input type="text" id="rating" name="rating">
          
          </fieldset>
        <input type="submit" id="submit" value="Create">
        <input type="reset" id="reset" value="Reset">
        
      </form>
      
      <script>
		jQuery(document).ready(function($) {
			
			
				$.ajax({
					type : "GET",
					contentType : "application/xml",
					url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/getEmployeeId",
					dataType : 'json',
				success : function(response) {
					alert(response);
					/* var res = response.split(",");
					alert(res);
					$('#employeeId').children('option:not(:first)').remove(); */
					if(response!="")
					{
					for (i = 0; i < response.length; i++)
					{
						$("#employeeId").append('<option value='+response[i]+'>'+response[i]+'</option>');
					}
					}
				}
			});
				
				
				
				/* select employee id to display detail  */
				
				$('#employeeId').change(function() {	
					
					var id = $(this).val();
					alert(id);
				$.ajax({
					type : "GET",
					contentType : "application/xml",
					url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/getEmployeeIdDetail/"+id,
					dataType : 'json',
				    success : function(response) {
					alert(response);
					/* var res = response.split(",");
					alert(res);
					$('#employeeId').children('option:not(:first)').remove(); */
					if(response!="")
					{
					for (i = 0; i < response.length; i++)
					{
						$("#employeeId").append('<option value='+response[i]+'>'+response[i]+'</option>');
					}
					}
				}
			});
				});
				
			 
			

			$("#createteam").submit(function(event) {

				// Disble the search button
				enableSearchButton(false);

				// Prevent the form from submitting via the browser.
				event.preventDefault();

				searchViaAjax();

			});

		});

		function searchViaAjax() {

			var search = {}
			search["projectName"] = $("#projectName").val();
			search["teamID"] = $("#teamID").val();
			search["teamLeadName"] = $("#teamLeadName").val();
			search["startDate"] = $("#startDate").val();
			search["endDate"] = $("#endDate").val();
			search["employeeId"] = $("#employeeId").val();
			search["employeeName"] = $("#employeeName").val();
			search["employeeRole"] = $("#employeeRole").val();
			search["experience"] = $("#experience").val();
			search["rating"] = $("#rating").val();
			
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/createteam",
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
			$("#submit").prop("disabled", flag);
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