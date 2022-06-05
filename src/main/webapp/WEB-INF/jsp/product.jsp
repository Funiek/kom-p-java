<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 05.06.2022
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Reservation Form</title>
</head>
<h3>Railway Reservation Form</h3>
<body>
<form:form action="submitForm" modelAttribute="product">
    First name: <form:input path="id" />
    <br><br>
    Last name: <form:input path="name" />
    <br><br>
    <input type="submit" value="Submit" />
</form:form>
</body>
</html>
