<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/form-elements.css">
<link rel="stylesheet" href="assets/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="shortcut icon" href="assets/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">
  
<style>
.edit {
	color: black;
}

.second {
	border: #999 1px solid;
	width: auto;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

.col-sm-6 forms-right-icons, .row {
	margin-right: -70px;
	margin-top: -10px;
}

.col-sm-offset-1 {
	margin-left: 0px;
	margin-top: -40px;
}
</style>


</head>

<body class="background">
	<div class="second">
		<div id="tf-home">
			<div class="overlay">
				<div id="sticky-anchor"></div>
				<nav id="tf-menu" class="navbar navbar-default">
					<div class="container">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand logo" href="#"><label id="name"></label></a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right">
							<li><a href="dashboard.html">Home</a></li>
								<li><a href="campaignview.jsp">Campaigns</a></li>
								<li><a href="contacts.html">Contacts</a></li>
								<li><a href="https://www.constantcontact.com/features">About</a></li>
								<li><a href="#tf-service">Logout</a></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
			</div>
		</div>

		<!-- Top content -->
		<div class="top-content">
			<div class="container">



				<div class="row">
					<div class="col-sm-10 col-sm-offset-1 show-forms">
						<span class="show-register-form active"> </span>

					</div>
				</div>

				<div class="row register-form">
					<div class="col-sm-4 col-sm-offset-1">
						<img src="img/screen.jpg" class="img-thumbnail" alt="Cinque Terre"
							width="304" height="236"> <a href="#" id=""><h4>Edit</h4></a>
					</div>
					<div class="col-sm-6 forms-right-icons">
						<div class="row">
							<div class="col-sm-2 icon">
								<i class="fa fa-pencil"></i>
							</div>
							<div class="col-sm-10">



								<div class="u-block b2-u-tableCell u-valignTop b2-u-size1of3"
									style="min-width: 220px;">


									<div class="Well Well--light Well--thin">

										 
											<div class="form-group">
												<label class="sr-only" for="r-form-first-name">From</label>
												<input type="text" name="r-form-first-name"
													placeholder="From" class="r-form-first-name form-control"
													id="text" id="frommail"  >
											</div>
											<div class="form-group">
												<label class="sr-only" for="r-form-email">To</label>
												<h5>
													T0: <span> * Separate Email Id's by Comma.</span>
												</h5>
												<textarea class="form-control" rows="5" maxlength="200" id="emailIds">
                                      </textarea>
											</div>

											<div class="dropdown">
												<select class="btn btn-default btn-block dropdown-toggle"
													data-toggle="dropdown" id="msgformat">
													<option value="">Select Format</option>
													<option value="HTML">HTML</option>
													<option value="TEXT">TEXT</option>
													<option value="HTML_AND_TEXT">HTML_AND_TEXT</option>
												</select>

											</div>
											<div class="form-group">
												<label class="sr-only" for="r-form-email">Message
													Body</label>
												<h5>Message Body</h5>
												<textarea class="form-control" maxlength="3000" id="message">
                                      </textarea>
											</div>

											<button type="submit" class="btn" id="action" onclick="send()">Send</button>
										


									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>





	<!-- Footer -->
	<nav id="tf-footer">
		<div class="container">
			<div class="pull-left">
				<p>
					2017 © Awesomess. All Rights Reserved. Designed and Coded by <a
						href="http://kumaran.com/">Kumaran</a> for <a
						href="https://campaign-ui.constantcontact.com">Constant
						Contact.Com</a>
				</p>
			</div>
			<div class="pull-right">
				<ul class="social-media list-inline">
					<li><a href="#"><span class="fa fa-facebook"></span></a></li>
					<li><a href="#"><span class="fa fa-twitter"></span></a></li>
					<li><a href="#"><span class="fa fa-pinterest"></span></a></li>
					<li><a href="#"><span class="fa fa-google-plus"></span></a></li>
					<li><a href="#"><span class="fa fa-dribbble"></span></a></li>
					<li><a href="#"><span class="fa fa-behance"></span></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	
	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/javascript" src="js/bootstrap.js"></script>

	<!-- Javascripts
    ================================================== -->
	<script type="text/javascript" src="js/main.js"></script>
<script>
$('#name').text(sessionStorage.getItem("email"));

$('#frommail').val(sessionStorage.getItem("email"));
function send(){
var token1=sessionStorage.getItem("token");
var campaignid= <%=request.getParameter("id1")%>;
 
	var tests={};
 
  
	tests["personal_message"]=$('#message').val(),

	tests["email_addresses"]=[$('#emailIds').val()
		],
	 
	tests["format"]= $('#msgformat').val()
 

	$.ajax({
	
	
		type : 'POST', 
		 // HTTP method, always use POST for our form
		 contentType : "application/json",
		url : 'https://api.constantcontact.com/v2/emailmarketing/campaigns/'+campaignid+'/tests?api_key=fzp36t99amfebw8asmpagaka&access_token='+token1, 
		 
		data : JSON.stringify(tests),// the type of data we expect back from the server
		success: function(response){
	 
				alert("success");
		}
	});
	
	
}

</script>

 
 
</body>

</html>