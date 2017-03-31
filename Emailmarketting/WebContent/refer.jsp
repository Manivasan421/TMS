<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
.loader {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url('img/loading.gif');
}
</style>
</head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">


$( window ).on( "load", function() {

	var url = window.location.href; 
	var captured = /code=([^&]+)/.exec(url)[1]; 
	var result = captured ? captured : 'myDefaultValue';
	sessionStorage.setItem("result",result);
	var code=sessionStorage.getItem("result");
	
	$.ajax({
		type : 'POST', // HTTP method, always use POST for our form
		url : 'https://oauth2.constantcontact.com/oauth2/oauth/token?grant_type=authorization_code&client_id=mfu59tfskc9j5yxz74mggqfp&client_secret=FCdtr7RbqTv5nGsUHwTB6Ccx&code='+code+'&redirect_uri=http://localhost:8080/Emailmarketting/refer.jsp', 
		dataType : 'json', // the type of data we expect back from the server
		success: function(response){
			$(".loader").fadeOut("slow").show(10000);
			var obj = $.parseJSON(JSON.stringify(response));
			for ( var key in obj) {
				var obj1 = obj[key];
				sessionStorage.setItem("token",obj1);
				break;
			}
		 window.location="dashboard.html";
		},
		error: function(response) {
			 window.location="error.html";
		}
		}); 
}); 
</script>

<body>

<div class="loader"></div>

</body>
</html>