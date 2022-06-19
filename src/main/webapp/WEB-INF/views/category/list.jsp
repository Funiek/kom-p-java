<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 14.06.2022
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Kategoria - Procesory</title>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="body-container">

    <h1 class="category-name">Procesory</h1>

    <div class="promo-list">
        <div class="promo-list-title">Polecamy</div>
        <div class="promo-list-wrapper">
            <div class="row">
                <c:forEach items="${productList}" var="product">
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="product">
                        <div class="product-img">
                            <a href="/product/${product.productId}"><img src="/resources/img/Products/${product.sku}.jpg" alt="Zdjęcie"></a>
                        </div>
                        <div class="product-title">
                            ${product.title}
                        </div>
                        <div class="product-price">
                            ${product.price}&nbsp;PLN
                        </div>
                        <div class="product-special-price">
                            99,99&nbsp;PLN </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<%@include file="../footer.jsp"%>
</body>
</html>
