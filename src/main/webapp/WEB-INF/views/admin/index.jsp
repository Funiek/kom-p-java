
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Title</title>
</head>

<body>
<% if (session.getAttribute("administrator")=="true" || session.getAttribute("moderator")=="true") { %>
<%@include file="../header.jsp" %>

<div style="padding-left: 20px;" class="body-container">
    <h1>Panel Administracyjny</h1>

    <h4>Witaj ${sessionScope["accountLogin"]}</h4>

    <div style="padding-top: 30px">
        <a class="btn add-to-cart-btn effect01" href="/admin/orderList" style="max-width:300px;">
            Zamówienia
        </a>
    </div>
    <div style="padding-top: 30px">
        <a class="btn add-to-cart-btn effect01" href="/admin/productList" style="max-width:300px;">
            Produkty
        </a>
    </div>
    <div style="padding-top: 30px">
        <a class="btn add-to-cart-btn effect01" href="/admin/accountList" style="max-width:300px;">
            Użytkownicy
        </a>
    </div>
    <div style="padding-top: 30px">
        <a class="btn add-to-cart-btn effect01" href="/" style="max-width:300px;">
            Wróć do strony głównej
        </a>
    </div>
</div>

<%@include file="../footer.jsp" %>
<% } %>
</body>
</html>
