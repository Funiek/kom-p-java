<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp"%>
    <title>Realizacja zamówienia</title>
</head>
<body>
<%@include file="../header.jsp"%>
<div class="body-container">
    <form:form action="details" method="post" modelAttribute="checkoutViewModel">
        <form:input path="order.account.accountId" type="hidden" value="${checkoutViewModel.order.account.accountId}" />
        <div class="row checkout-container">
        <div class="col-md-6 checkout-container-left">
            <h2>Dostawa i płatność</h2>
            <div class="col-md-12 checkout-user-data">
                <h3>Dane odbiorcy</h3>
                <div>
                    <form:input path="order.firstName" class="checkout-user-data-row" type="text" placeholder="Imię" />
                </div>
                <div>
                    <form:input path="order.lastName" class="checkout-user-data-row" type="text" placeholder="Nazwisko" />
                </div>
                <div>
                    <form:input path="order.address" class="checkout-user-data-row" type="text" placeholder="Adres dostawy" />
                </div>
            </div>

            <div class="col-md-12 checkout-shipping">
                <h3>Sposoby dostawy</h3>
                <table>
                    <tbody>
                    <tr>
                        <td><label><form:radiobutton path="order.delivery" value="Osobisty" /> <img width="64px" height="64px" src="/resources/img/Shipping/u_nas.png" alt="osobisty"></label></td>
                        <td><label><form:radiobutton path="order.delivery" value="Kurier" /> <img width="64px" height="64px" src="/resources/img/Shipping/kurier.png" alt="kurier"></label></td>
                        <td><label><form:radiobutton path="order.delivery" value="Inpost" /> <img width="96px" height="64px" src="/resources/img/Shipping/inpost.png" alt="inpost"></label></td>
                        <td><label><form:radiobutton path="order.delivery" value="Punkt odbioru" /> <img width="64px" height="64px" src="/resources/img/Shipping/oddzialy.svg" alt="oddzialy"></label></td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="col-md-12 checkout-payment">
                <h3>Metody płatności</h3>
                <table>
                    <tbody>
                    <tr>
                        <td><label><form:radiobutton path="order.payment" value="BLIK" /> Płatność BLIK <img width="64px" height="64px" src="/resources/img/Payment/blik.png" alt="blik"></label></td>
                    </tr>
                    <tr>
                        <td><label><form:radiobutton path="order.payment" value="Karta" /> Karta płatnicza online<img width="64px" height="64px" src="/resources/img/Payment/karta.png" alt="karta"></label></td>
                    </tr>
                    <tr>
                        <td><label><form:radiobutton path="order.payment" value="Online" /> Płatność przez internet - online <img width="64px" height="64px" src="/resources/img/Payment/online.png" alt="przez_internet"></label></td>
                    </tr>
                    <tr>
                        <td><label><form:radiobutton path="order.payment" value="Odbior" /> Płatność przy odbiorze <img width="64px" height="64px" src="/resources/img/Payment/odbior.png" alt="przy odbiorze"></label></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-6 checkout-container-right">
            <h2>Lista produktów</h2>
            <c:forEach items="${checkoutViewModel.cartProducts}" var="cartProduct">
            <div class="cart-product">
                <div class="col-md-3"><img class="cart-img" src="/resources/img/Products/${cartProduct.product.sku}.jpg" alt="Zdjęcie"></div>
                <div class="col-md-6">${cartProduct.product.title}</div>
                <div class="col-md-1">${cartProduct.qty}</div>
                <div class="col-md-1">${cartProduct.product.price}&nbspPLN</div>
                <div class="col-md-1"></div>
            </div>
            </c:forEach>
            <form:button style="padding-top:20px;" class="btn add-to-cart-btn effect01">Zapłać</form:button>
        </div>
    </div>
    </form:form>
</div>
<%@include file="../footer.jsp"%>

</body>
</html>