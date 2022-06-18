<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 14.06.2022
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Koszyk</title>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="body-container">
    <div class="cart-container">
        <h1>Koszyk</h1>
        <div class="cart-header row">
            <div class="col-md-1 col-xs-1"></div>
            <div class="col-md-4 col-xs-4">Tytuł</div>
            <div class="col-md-2 col-xs-2">Cena</div>
            <div class="col-md-2 col-xs-2">Cena promocyjna</div>
            <div class="col-md-2 col-xs-2">Ilość</div>
            <div class="col-md-1 col-xs-1">Usuń</div>
        </div>
        <c:forEach items="${cart.cartProducts}" var="cartProduct">
        <div class="cart-product row">
            <div class="col-md-1 col-xs-1">
                <a href="/product/${cartProduct.product.productId}">
                    <img class="cart-img" src="/resources/img/Products/${cartProduct.product.sku}.jpg" alt="Zdjęcie">
                </a>
            </div>
            <div class="col-md-4 col-xs-4 cart-product-center">${cartProduct.product.title}</div>
            <div class="col-md-2 col-xs-2 cart-product-center">${cartProduct.product.price}</div>
            <div class="col-md-2 col-xs-2 cart-product-center">129,99</div>
            <div class="col-md-2 col-xs-2 cart-product-center">${cartProduct.qty}</div>
            <div class="col-md-1 col-xs-1 cart-product-center"><a class="cart-product-anchor" href="/cart/delete/${cartProduct.product.productId}"><i class="fas fa-trash-alt"></i></a></div>
        </div>
        </c:forEach>
        <a class="cart-checkout-btn" href="/checkout/describeBuyer">
            <div class="btn add-to-cart-btn effect01">Złóż zamówienie</div>
        </a>
        <div class="clear"></div>
        <div class="cart-promo-code-wrapper">
            <form action="/Cart/ApplyPromo" method="get">
                <h3>Wprowadź kod promocyjny</h3>
                <div><input type="text" placeholder="Kod promocyjny"></div>
                <button style="margin-top:10px;" class="btn add-to-cart-btn effect01">Zatwierdź</button>
            </form>
        </div>
        <div class="promo-list">
            <div class="promo-list-title">Popularne produkty</div>
            <div class="promo-list-wrapper">
                <div class="row">
                    <c:forEach items="${cart.recommendedProducts}" var="product">
                    <div class="col-xs-12 col-md-3 col-lg-3">
                        <div class="product">
                            <div class="product-img">
                                <a href="/product/2"><img src="/resources/img/Products/${product.sku}.jpg" alt="Zdjęcie"></a>
                            </div>
                            <div class="product-title">
                                ${product.sku}
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
</div>
<%@include file="../footer.jsp" %>
</body>
</html>
