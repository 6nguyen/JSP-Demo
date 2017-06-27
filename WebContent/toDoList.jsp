<%@ page import="java.util.*" %>

<html>
<title>Task Tracker</title>
<h1 align="center">Task Tracker</h1>

<body>



<!-- Step 1: Create HTML form and submit button -->

<form action="toDoList.jsp">
	Add new item: <input type="text" name="item" />
	
	<input type="submit" value="Add Task" />
</form>
<br>




<!-- Step 2: Add new items to a List<String> -->
<%
	// store items from the session into List, import java.util.*
	// 
	List<String> items = (List<String>) session.getAttribute("toDoList");
	
	// if the item doesn't exist, create a new one
	if (items == null){
		items = new ArrayList<String>();
		session.setAttribute("toDoList", items);
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
<b>My Tasks:</b><br/>

<ol>
<%
	for (String x : items) {
		out.println("<li>" + x + "</li>");
	}
%>
</ol>



</body>

</html>