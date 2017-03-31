<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
</head>

<body>
	<h1>Struts  + Spring + Hibernate integration example</h1>

	<h2>Add Customer</h2>
	<s:form action="validate">

		<s:textfield name="projectid" label="Project Id" value="" />

		<label>Select date</label>
		<s:date name="date" format="dd/MM/yyyy" />
		<s:select headerKey="-1" headerValue="Select Project"
			list="select project name" name="month" />
		<s:textfield name="projectname" label="Project Name" value="" />
		<s:textfield name="projectdetail" label="Project Detail" value="" />
		<s:textfield name="created" label=" Created by" value="" />
		<s:textfield name="startdate" label="Start Date " value="" />
		<s:textfield name="enddate" label="End Date" value="" />
		<s:textfield name="status" label="Status " value="" />

		<s:submit value="Create" method="operation" />
		<s:submit value="Update" method="operation" />
		<s:submit value="Delete" method="operation" />
		<s:reset value="Reset" />


	</s:form>
	<br />
	<br />

</body>
</html>