<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <link rel="stylesheet" href="source/css/style.css">
   <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
      <form id="clientreg" method="post">
      
        <h1>Client Login</h1>
        
        <fieldset>
         
       
          
          <label for="name">Name:</label>
          <input type="text" id="name" name="name">
          
          <label for="org">Organization:</label>
          <input type="text" id="organization" name="organization">
		  
		  <label for="phone">Phone Number:</label>
          <input type="number" id="phoneNumber" name="phoneNumber">
          
          <label for="email">Email:</label>
          <input type="email" id="email" name="email">
          
          <label for="password">Password:</label>
          <input type="password" id="password" name="password">
          
          <label for="address">Address:</label>
          <textarea rows="3" cols="20" id="address" name="address"></textarea>
           </fieldset>
        <input type="submit" id="submit" value="Login" />
        <input type="reset" id="reset">
      </form>
        <script>
		jQuery(document).ready(function($) {

			$("#clientreg").submit(function(event) {

				// Disble the search button
				enableSearchButton(false);

				// Prevent the form from submitting via the browser.
				event.preventDefault();

				searchViaAjax();

			});

		});

		function searchViaAjax() {

			var search = {}
			search["clientId"] = $("#clientId").val();
			search["name"] = $("#name").val();
			search["organization"] = $("#organization").val();
			search["phoneNumber"] = $("#phoneNumber").val();
			search["email"] = $("#email").val();
			search["password"] = $("#password").val();
			search["address"] = $("#address").val();
			
			
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/clientregister",
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