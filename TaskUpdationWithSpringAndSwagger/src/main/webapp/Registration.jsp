<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
   <link rel="stylesheet" href="source/css/style.css"/>
   <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body background="source/img/back.jpg">
      <form id="register">
        <h1>Employee Registration</h1>
        <fieldset>
         
          <label for="name">Name:</label>
          <input type="text" id="name" name="name">
          
          <label for="mail">Email:</label>
          <input type="email" id="email" name="email">
          
          <label for="password">Password:</label>
          <input type="password" id="password" name="password">
		  
          
          <label>Gender:</label>
          <input type="radio" id="male" value="male" name="male"><label for="male" class="light">Male</label><br>
          <input type="radio" id="male" value="female" name="female"><label for="female" class="light">Female</label>

          <label for="address">Address:</label>
          <textarea id="address" name="address"></textarea>
			
		  <label for="fname">Father Name:</label>
          <input type="text" id="fname" name="fname">
			
		<label for="job">Job Role:</label>
        <select id="job" name="job">
          <optgroup label="Web">
            <option value="Developer">Developer</option>
            <option value="Admin">Admin</option>
            <option value="Project Manager">Project Manager</option>
            <option value="Senior Manager">Senior Manager</option>
        </select>
		
		<label for="exp">Experience:</label>
          <input type="text" id="exp" name="exp">
		
		<label for="mob">Mobile Number:</label>
          <input type="text" id="mob" name="mob">
        </fieldset>
       <input type="submit" id="submit" value="Sign Up" />
        <input type="reset" id="reset">
      </form>
      
      	<script>
		jQuery(document).ready(function($) { 
			$("#register").submit(function(event) { 
				enableSearchButton(false);
				event.preventDefault();
				searchViaAjax();
			});
		});
		function searchViaAjax() {
			var search = {}
			search["employeeName"] = $("#name").val();
			search["email"] = $("#email").val();
			search["password"] = $("#password").val();
			search["gender"] = $("#male").val();
			search["address"] = $("#address").val();
			search["fatherName"] = $("#fname").val();
			search["employeeRole"] = $("#job option:selected").text();
			search["exprience"] = $("#exp").val();
			search["phoneNumber"] = $("#mob").val();

			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/register",
 				data : JSON.stringify(search),
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					console.log("SUCCESS: ", data);
					alert("you Register succssfully!!!!!")
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

