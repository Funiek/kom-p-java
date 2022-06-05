<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 05.06.2022
  Time: 09:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>

<body>
<h2>Student Information</h2>
<form:form method = "POST" action = "/kom_p_java_war_exploded/product">
    <table>
        <tr>
            <td><form:label path = "id">id</form:label></td>
            <td><form:input path = "id" /></td>
        </tr>
        <tr>
            <td><form:label path = "name">Name</form:label></td>
            <td><form:input path = "name" /></td>
        </tr>
        <tr>
            <td><form:label path = "price">Price</form:label></td>
            <td><form:input path = "price" /></td>
        </tr>

        <tr>
            <td colspan = "2">
                <input type = "submit" value = "Submit"/>
            </td>
        </tr>
    </table>
</form:form>
</body>

</html>