<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 14.06.2022
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Strona produktu</title>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="body-container">

    <form action="/product" method="post" novalidate="novalidate">
        <div class="product-details-wrapper">
            <input id="product_ProductId" name="product.ProductId" type="hidden" value="2">
            <div class="product-image-details">
                <img src="/resources/img/Products/${product.sku}.jpg" alt="Zdjęcie" class="product-image-full">
            </div>
            <div class="product-desc">
                <p>Nazwa produktu: ${product.title}</p>
                <p class="SKU">SKU: ${product.sku}</p>
                <p>Cena: ${product.price}&nbsp;PLN</p>
                <p style="font-size:30px; padding:0;" class="product-special-price">Cena promocyjna: 99,99&nbsp;PLN</p>
                <p>Ilość
                    <input type="number" step="1" min="1" value="1" id="qty" name="qty">
                </p>
                <button class="btn add-to-cart-btn effect01">Dodaj do koszyka</button>
            </div>
            <div style="clear:both;"></div>
        </div>
    </form>
    <div>
        <div style="padding-left:20px;padding-right:20px;" class="float-left">
            <a class="btn add-to-cart-btn effect01" href="/category/${product.category.categoryId}">Wróć do kategorii</a>
        </div>
        <div class="float-left">
            <a class="btn add-to-cart-btn effect01" href="/" style="max-width:300px;">
            Wróć do strony głównej
            </a>
        </div>
        <div style="clear:both;"></div>
    </div>

</div>
<%@include file="../footer.jsp" %>
</body>
</html>
