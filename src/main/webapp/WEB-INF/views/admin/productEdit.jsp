
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Title</title>
</head>
<body>
<% if (session.getAttribute("administrator")=="true" || session.getAttribute("moderator")=="true") { %>
<%@include file="../header.jsp" %>

<div class="body-container">
    <h1>Panel Administracyjny</h1>
</div>

<%@include file="../footer.jsp" %>
<% } %>
</body>
</html>
