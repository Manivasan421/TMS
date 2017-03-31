<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <link rel="stylesheet" href="source/css/style.css">
   <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
      <form id="projectresoucre" method="post">
      
        <h1>Project Detail</h1>
        
        <fieldset>
         
        
          
          <label for="pname">Project Name:</label>
          <input type="text" id="projectName" name="projectName">
          
          <label for="des">Description:</label>
          <textarea rows="3" cols="20" id="description" name="description"></textarea>
           
          <label for="sdate">Start Date:</label>
          <input type="date" id="startDate" name="startDate">
          
          <label for="edate">End Date:</label>
          <input type="date" id="endDate" name="endDate">
          
          <label for="org">Organization:</label>
          <input type="text" id="organization" name="organization">
          
          <label for="url">Document URL:</label>
          <input type="url" id="documentUrl" name="documentUrl">
          
          <label for="budget">Budget:</label>
          <input type="text" id="budget" name="budget">
		 
          <label for="createdby">Created By:</label>
          <input type="text" id="created" name="created">
          
        </fieldset>
        <input type="submit" value="Submit" id="submit">
        <input type="reset" id="reset">
      </form>
    
         
      <script>
		jQuery(document).ready(function($) {

			$("#projectresoucre").submit(function(event) {

				// Disble the search button
				enableSearchButton(false);

				// Prevent the form from submitting via the browser.
				event.preventDefault();

				searchViaAjax();

			});

		});

		function searchViaAjax() {

			var search = {}
			search["projectID"] = $("#projectID").val();
			search["projectName"] = $("#projectName").val();
			search["description"] = $("#description").val();
			search["startDate"] = $("#startDate").val();
			search["endDate"] = $("#endDate").val();
			search["organization"] = $("#organization").val();
			search["documentUrl"] = $("#documentUrl").val();
			search["budget"] = $("#budget").val();
			search["created"] = $("#created").val();
			
			
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/projectresource",
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