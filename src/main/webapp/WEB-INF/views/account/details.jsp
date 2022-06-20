<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Dane konta</title>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="body-container">
    <h1>Dane użytkownika</h1>
    <hr>
    <dl class="row">
        <dt class="col-sm-2">
            Login
        </dt>
        <dd class="col-sm-10">
            ${account.login}
        </dd>
        <dt class="col-sm-2">
            Adres
        </dt>
        <dd class="col-sm-10">
            ${account.address}
        </dd>
        <dt class="col-sm-2">
            Email
        </dt>
        <dd class="col-sm-10">
            ${account.email}
        </dd>
        <dt class="col-sm-2">
            Telefon
        </dt>
        <dd class="col-sm-10">
            ${account.phone}
        </dd>
    </dl>
    <div>Sprawdź swoje zamówienia</div>
    <c:forEach items="${account.placedOrders}" var="order">
        <div><a href="/account/order/${order.orderId}">${order.orderId} | ${order.amount} | ${order.payment} | ${order.delivery} | ${order.address}</a></div>
    </c:forEach>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>
