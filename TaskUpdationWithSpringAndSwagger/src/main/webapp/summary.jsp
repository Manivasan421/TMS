<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Being Java Guys | Status Details</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
#d
{
margin-top: 30px;
}
#dd
{
margin-top: 40px;
}
#tab
{
margin-left:70px;
margin-top: 60px;
padding: 5px;
cell-padding:5px;
text-align: center;
}
body
{
    font: 12px 'Lucida Sans Unicode', 'Trebuchet MS', Arial, Helvetica;    
    margin: 0;
    background-color: #d9dee2;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ebeef2), to(#d9dee2));
    background-image: -webkit-linear-gradient(top, #ebeef2, #d9dee2);
    background-image: -moz-linear-gradient(top, #ebeef2, #d9dee2);
    background-image: -ms-linear-gradient(top, #ebeef2, #d9dee2);
    background-image: -o-linear-gradient(top, #ebeef2, #d9dee2);
    background-image: linear-gradient(top, #ebeef2, #d9dee2);    
}
table
{
border-style:solid;
border-width:1px;
margin-left:60px;
background-color:white;
align:center;
cell-padding:15px;
}
</style>
</head>
<body>
	<center>
      
		<div style="color: teal; font-size: 30px" id="d">Being Java Guys | Status
			Details</div>
		<form id="collect">
		<div id="dd">
			Date : <input type="date" id="date" name="date"/></div>
		</form>
				<input type="hidden" value= "<%=session.getAttribute("empid") %>" name="empid" id="empid"></lable>

		<script type="text/javascript">
	
		 
			$(document)
					.ready(
							 
							function() {
								$('#date')
										.change(
												function() {
													
													
												   var empid=$('#empid').val();
												   alert(empid);
													var i=0;
													var date = $(this).val();
													//alert(date);
													$
															.ajax({
																type : "GET",
																contentType : "application/xml",
																url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/getStatus/"+date+","+empid,
																dataType : 'json',
																success : function(
																		response) {
																	alert(JSON
																			.stringify(response));
																	/* var json = "<h4>Ajax Response</h4><pre>"
																		+ JSON.stringify(response, null, 4) + "</pre>"; */
																	var obj = $
																			.parseJSON(JSON
																					.stringify(response));
																		
																	
																		
																	for ( var key in obj) {
																		var obj1 = obj[key];
																		
																	
																		 $('#table1 tr:not(:first)').remove();
																		for ( var key1 in obj1) {
																			var obj2 = obj1[key1];
																			 var table = document.getElementById("table1");
																			
																			    var tr = table.insertRow();
																			for ( var key2 in obj2) {
																				if((key2!="id")&&(key2!="date")&&(key2!="empid"))
																				{
																				var td = tr.insertCell();
																			    td.innerHTML= JSON.stringify(obj2[key2]).replace('"',' ').replace('"',' ');
																			 
																				}
																				else if(key2=="id"){
																					var a=JSON.stringify(obj2[key2]).replace('"',' ').replace('"',' ');
																					call(a);
																				}
																				
																			}
																			
																		    function call(a){
																			var td = tr.insertCell();
																			alert(a);
																		    td.innerHTML= "<a href='Anydaytask.jsp?id="+a+"'>Edit</a>";
																		    var td = tr.insertCell();
																		    td.innerHTML= "<a href='summary.jsp?id ="+a+"'>Delete</a>";
																		  }
																		}
																	}
																}
															});
												});
							});
			
			</script>
			<script>
			function openSolution(){
				alert();
				var str=<%=request.getParameter("id")%>
				alert(str);
			}
			
		</script>
		<div id="tab">
		<table class="table table-hover table-bordered" id="table1" cellpadding="15">
			<thead style="background-color: #bce8f1;">
				<tr>
					<th>Edit</th>
					<th>Delete</th>
					<th>Project</th>
					<th>Task</th>
					<th>Work Product</th>
					<th>Task Description</th>
					<th>Assign hours</th>
					<th>Actual hours</th>
					<th>Status</th>
					
				</tr>
			</thead>
		</table>
		</div>
			
		
    


		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>



	</center>
</body>
</html>