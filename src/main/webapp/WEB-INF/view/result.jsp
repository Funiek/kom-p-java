<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 05.06.2022
  Time: 09:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored = "false" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>

<body>
<h2>Submitted Student Information</h2>
<table>
    <tr>
        <td>ID</td>
        <td>${id}</td>
    </tr>
    <tr>
        <td>Name</td>
        <td>${name}</td>
    </tr>
    <tr>
        <td>Price</td>
        <td>${price}</td>
    </tr>
</table>
</body>

</html>