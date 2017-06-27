<html>
<body>

<h3>JSP Built-In Object Test</h3>

Request user agent (Browser and OS info): 
<br/><%= request.getHeader("User-Agent") %>
<br/><br/>

Request language/locale:
<br/> <%= request.getLocale() %>

</body>
</html>