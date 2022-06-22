<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Lista zamówień</title>
</head>
<body>
<% if (session.getAttribute("administrator")=="true" || session.getAttribute("moderator")=="true") { %>
<%@include file="../header.jsp" %>

<div class="body-container">
    <h1>Lista zamówień</h1>
    <table class="table">
        <thead>
        <tr>
            <th>
                Zamówienie
            </th>
            <th>
                Produkt
            </th>
            <th>
                Ilość
            </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${orderProductList}" var="item">
            <tr>
                <td>
                        ${item.order.orderId}
                </td>
                <td>
                        ${item.product.sku}
                </td>
                <td>
                        ${item.qty}
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="../footer.jsp" %>
<% } %>
</body>
</html>
