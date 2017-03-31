<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <link rel="stylesheet" href="source/css/style.css">
   <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
      <form id="projectassigntopm" method="post">
      
        <h1>Project Detail</h1>
        
        <fieldset>
         
        
          
          <label for="pid">Project ID:</label>
          <select id="projectName" name="projectName">
          <option>SelectProjectID</option>
          </select>
          <label for="pname">Project Name:</label>
          <input type="text" id="pname" name="pname">
           
          <label for="pmid">Project Manager ID:</label>
          <select id="pmid" name="pmid">
          <option>Select</option>
          </select>
         
          <label for="pmname">Project Manager ID:</label>
          <input type="text" id="pmname" name="pmname">
          
          
        </fieldset>
        <input type="submit" value="Assign" id="submit">
        <input type="reset" id="reset">
      </form>
    
         
      <script>
		jQuery(document).ready(function($) {
			
			
			$.ajax({
				type : "GET",
				contentType : "application/xml",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/getprojectid",
				dataType : 'json',
			success : function(response) {
				alert(response);
				/* var res = response.split(",");
				alert(res);*/
				$('#projectName').children('option:not(:first)').remove(); 
				if(response!="")
				{
				for (i = 0; i < response.length; i++)
				{
					$("#projectName").append('<option value='+response[i]+'>'+response[i]+'</option>');
				}
				}
			}
		});
			
			
			$.ajax({
				type : "GET",
				contentType : "application/xml",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/getProjectManagerid",
				dataType : 'json',
			success : function(response) {
				alert(response);
				/* var res = response.split(",");
				alert(res);*/
				$('#pmid').children('option:not(:first)').remove(); 
				if(response!="")
				{
				for (i = 0; i < response.length; i++)
				{
					$("#pmid").append('<option value='+response[i]+'>'+response[i]+'</option>');
				}
				}
			}
		});
			
			
			
			$('#pmid').change(function() {	
				
				var pmid = $(this).val();
				alert(pmid);
			$.ajax({
				type : "GET",
				contentType : "application/xml",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/getProjectManagerNames/"+pmid,
				dataType : 'json',
			    success : function(response) {
				alert(response);
				$('#pmname').val(response[0]);
			}
			});
			});	
			
	$('#projectName').change(function() {	
				
				var projectName = $(this).val();
				alert(projectName);
			$.ajax({
				type : "GET",
				contentType : "application/xml",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/getProjectNames/"+projectName,
				dataType : 'json',
			    success : function(response) {
				alert(response);
				$('#pname').val(response[0]);
			}
			});
			});		
			
			
			
			
			
			
			
			

			$("#projectassigntopm").submit(function(event) {

				// Disble the search button
				enableSearchButton(false);

				// Prevent the form from submitting via the browser.
				event.preventDefault();

				searchViaAjax();

			});

		});

		function searchViaAjax() {

			var search = {}
			search["projectID"] =  $("#projectName option:selected").text();
			search["projectName"] = $("#pname").val();
			search["description"] = $("#pmid option:selected").text();
			search["startDate"] = $("#pmname").val();
			 
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/Assigntoproject",
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
			
		
	</script>
    
      
</body>
</html>