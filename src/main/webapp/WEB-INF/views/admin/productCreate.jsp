<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 19.06.2022
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
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
