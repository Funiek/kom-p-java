<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 05.06.2022
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista produktów</title>
</head>
<h3>Lista produktów</h3>
<body>
<table border="1" cellpadding="4">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>E-mail</th>
        <th>Address</th>
    </tr>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${product.productId}</td>
            <td>${product.title}</td>
            <td>${product.price}</td>
            <td>${product.sku}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
