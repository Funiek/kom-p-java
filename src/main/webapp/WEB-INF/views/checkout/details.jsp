<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 19.06.2022
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp"%>
    <title>Realizacja zamówienia</title>
</head>
<body>
<%@include file="../header.jsp"%>
<div class="body-container">
    <form action="/Checkout/HandleTransaction" method="post" novalidate="novalidate"><div class="row checkout-container">
        <div class="col-md-6 checkout-container-left">
            <h2>Dostawa i płatność</h2>
            <div class="col-md-12 checkout-user-data">
                <h3>Dane odbiorcy</h3>
                <div>
                    <input class="checkout-user-data-row" type="text" placeholder="Imię" id="name" name="name" value="">
                </div>
                <div>
                    <input class="checkout-user-data-row" type="text" placeholder="Nazwisko" id="surname" name="surname" value="">
                </div>
                <div>
                    <input class="checkout-user-data-row" type="text" placeholder="Adres dostawy" id="address" name="address" value="">
                </div>
            </div>

            <div class="col-md-12 checkout-shipping">
                <h3>Sposoby dostawy</h3>
                <table>
                    <tbody><tr>
                        <td><label><input data-val="true" data-val-length="The field Shipping must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The Shipping field is required." id="order_Shipping" name="order.Shipping" type="radio" value="Osobisty"> <img width="64px" height="64px" src="/img/Shipping/u_nas.png"></label></td>
                        <td><label><input id="order_Shipping" name="order.Shipping" type="radio" value="Kurier"> <img width="64px" height="64px" src="/resources/img/Shipping/kurier.png" alt="kurier"></label></td>
                        <td><label><input id="order_Shipping" name="order.Shipping" type="radio" value="Inpost"> <img width="96px" height="64px" src="/resources/img/Shipping/inpost.png" alt="inpost"></label></td>
                        <td><label><input id="order_Shipping" name="order.Shipping" type="radio" value="Punkt odbioru"> <img width="64px" height="64px" src="/resources/img/Shipping/oddziały.svg" alt="oddzialy"></label></td>
                    </tr>
                    </tbody></table>
            </div>

            <div class="col-md-12 checkout-payment">
                <h3>Metody płatności</h3>
                <table>
                    <tbody><tr>
                        <td><label><input data-val="true" data-val-length="The field PaymentMethod must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The PaymentMethod field is required." id="order_PaymentMethod" name="order.PaymentMethod" type="radio" value="BLIK"> Płatność BLIK <img width="64px" height="64px" src="/img/Payment/blik.png"></label></td>
                    </tr>
                    <tr>
                        <td><label><input id="order_PaymentMethod" name="order.PaymentMethod" type="radio" value="Karta"> Karta płatnicza online<img width="64px" height="64px" src="/resources/img/Payment/karta.png"></label></td>
                    </tr>
                    <tr>
                        <td><label><input id="order_PaymentMethod" name="order.PaymentMethod" type="radio" value="Online"> Płatność przez internet - online <img width="64px" height="64px" src="/resources/img/Payment/online.png"></label></td>
                    </tr>
                    <tr>
                        <td><label><input id="order_PaymentMethod" name="order.PaymentMethod" type="radio" value="Odbior"> Płatność przy odbiorze <img width="64px" height="64px" src="/resources/img/Payment/odbior.png"></label></td>
                    </tr>
                    </tbody></table>
            </div>
        </div>
        <div class="col-md-6 checkout-container-right">
            <h2>Lista produktów</h2>
            <div class="cart-product">
                <div class="col-md-3"><img class="cart-img" src="/resources/img/Products/INTEL-I7-10700K.jpg" alt="Zdjęcie"></div>
                <div class="col-md-7">Intel I7 10700k</div>
                <div class="col-md-1">1</div>
                <div class="col-md-1">199,00</div>
            </div>
            <button style="padding-top:20px;" class="btn add-to-cart-btn effect01">Zapłać</button>
        </div>
    </div>
</div>
<%@include file="../footer.jsp"%>
</body>
</html>
