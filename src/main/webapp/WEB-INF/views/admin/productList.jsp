<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Lista produktów</title>
</head>
<body>
<% if (session.getAttribute("administrator")=="true" || session.getAttribute("moderator")=="true") { %>
<%@include file="../header.jsp" %>

<div class="body-container">
    <p>
        <a href="/admin/productCreate" class="btn btn-primary">Stwórz nowy</a>
    </p>
    <h1>Lista produktów</h1>
    <table class="table">
        <thead>
        <tr>
            <th>
                Id
            </th>
            <th>
                Nazwa
            </th>
            <th>
                Sku
            </th>
            <th>
                Cena
            </th>
            <th>
                Kategoria
            </th>
            <th>
                Promo
            </th>
            <th>
                Widoczny
            </th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${productList}" var="product">
        <tr>
            <td>
                ${product.productId}
            </td>
            <td>
                ${product.title}
            </td>
            <td>
                ${product.sku}
            </td>
            <td>
                ${product.price}
            </td>
            <td>
                ${product.category.title}
            </td>
            <td>
                ${product.promo}
            </td>
            <td>
                ${product.visible}
            </td>
            <td>
                <a href="#">Edytuj</a> |
                <a href="/product/${product.productId}">Szczegóły</a> |
                <a href="#">Usuń</a>
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
