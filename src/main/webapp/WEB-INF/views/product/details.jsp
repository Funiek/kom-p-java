
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Strona produktu</title>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="body-container">
    <form:form action="/product" method="post" modelAttribute="cartProduct">
        <form:input path="product.productId" type="hidden" value="${cartProduct.product.productId}"/>
        <div class="product-details-wrapper">
            <div class="product-image-details">
                <img src="/resources/img/Products/${cartProduct.product.sku}.jpg" alt="Zdjęcie" class="product-image-full">
            </div>
            <div class="product-desc">
                <p>Nazwa produktu: ${cartProduct.product.title}</p>
                <p class="SKU">SKU: ${cartProduct.product.sku}</p>
                <p>Cena: ${cartProduct.product.price}&nbsp;PLN</p>
                <p style="font-size:30px; padding:0;" class="product-special-price">Cena promocyjna: 99,99&nbsp;PLN</p>
                <p>Ilość
                    <form:input path="qty" type="number" step="1" min="1" value="1" id="qty" name="qty"/>
                </p>
                <form:button class="btn add-to-cart-btn effect01">Dodaj do koszyka</form:button>
            </div>
            <div style="clear:both;"></div>
        </div>
    </form:form>
    <div>
        <div style="padding-left:20px;padding-right:20px;" class="float-left">
            <a class="btn add-to-cart-btn effect01" href="/category/${cartProduct.product.category.categoryId}">Wróć do kategorii</a>
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
