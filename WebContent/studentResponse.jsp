<html>

<head><title>Student Confirmation</title></head>
<h1>Student Confirmation</h1>

<body>

	The student has been registered.
	
	<br/><br/>
	
	Name: &emsp;${param.firstName} ${param.lastName}
	<br/>
	Country:&ensp;${param.country}
	<br/>	
	Gender: &ensp;${param.gender}
	
	<br/><br/>
	
	Eulogy: 
	<ul>
		<% 
			String[] descriptors = request.getParameterValues("description"); 
		
			for (String x: descriptors){
				out.println("<li>" + x + "</li>");
			}
		%>
	</ul>
	
	
</body>

</html>