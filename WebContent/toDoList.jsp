<%@ page import="java.util.*" %>

<html>
<title>Task Tracker</title>
<h1 align="center">Task Tracker</h1>

<body>

<!-- Step 1: Create HTML form -->

<form action="toDoList.jsp">
	Add new item: <input type="text" name="item" />
	
	<input type="submit" value="Add" />
</form>
<br>
Task: <%= request.getParameter("item") %>


<!-- Step 2: Add new items to To Do list -->
<%
	// get items from the session, import java.util.*
	List<String> items = (List<String>) session.getAttribute("TaskTracker");
	
	// if the item doesn't exist, create a new one
	if (items == null){
		items = new ArrayList<String>();
		session.setAttribute("TaskTracker", items);
	}
	
	// see if there is form data to add
	String item = request.getParameter("item");
	if (item != null) {
		items.add(item);
	}
%>
<!-- Step 3: Display all items from session -->
<!-- 
HTML CHEAT SHEET ***************************
	<hr> is a horizontal line break 
	<b></b> is bold font
	<ol></ol> is ordered list, displays a numbered list
	<li></li> is list item in <ol> or <ul> (unordered list)
********************************************
-->
<hr>
<b>Tasks:</b><br/>

<ol>
<%
	for (String x : items) {
		out.println("<li>" + x + "</li>");
	}
%>
</ol>



</body>

</html>