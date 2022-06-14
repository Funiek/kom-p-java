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

    <form action="/Products/Details/2" method="post" novalidate="novalidate">
        <div class="product-details-wrapper">
            <input data-val="true" data-val-required="The ProductId field is required." id="product_ProductId"
                   name="product.ProductId" type="hidden" value="2">
            <div class="product-image-details"><img src="/resources/img/Products/INTEL-I7-10700K.jpg" alt="Zdjęcie"
                                                    class="product-image-full"></div>
            <div class="product-desc">
                <p>Nazwa produktu: Intel I7 10700k</p>
                <p class="SKU">SKU: INTEL-I7-10700K</p>
                <p>Data wydania: 23.03.2017</p>
                <p>Cena: 1399,99&nbsp;PLN</p>
                <p style="font-size:30px; padding:0;" class="product-special-price">Cena promocyjna: 99,99&nbsp; PLN</p>
                <p>Ilość <input type="number" step="1" min="1" value="1" data-val="true"
                                data-val-required="The qty field is required." id="qty" name="qty"></p>
                <button class="btn add-to-cart-btn effect01">Dodaj do koszyka</button>
            </div>
            <div style="clear:both;"></div>
        </div>
        <input name="__RequestVerificationToken" type="hidden"
               value="CfDJ8E-WB332hMZPmhd1ryOHvTmnYDtnDFikcd8zG7UiWnCbPzwMPJdw-DxsB8mQ3xXbrNMMnJRXYAQUNMCQN768XAPx3rlrPsJOVmbaxg8nuatgTuIVyxHoE0MCH9YgPsxkhoaW8u_0m01qWMjt6kZcuiU">
    </form>
    <div>
        <div style="padding-left:20px;padding-right:20px;" class="float-left">
            <a class="btn add-to-cart-btn effect01" href="/Categories/Index/5">Wróć do kategorii</a>
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
