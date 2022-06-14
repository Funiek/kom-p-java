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
        <div class="cart-product row">
            <div class="col-md-1 col-xs-1"><img class="cart-img" src="/resources/img/Products/INTEL-I5-10600K.jpg" alt="Zdjęcie">
            </div>
            <div class="col-md-4 col-xs-4 cart-product-center">Intel I5 10600k</div>
            <div class="col-md-2 col-xs-2 cart-product-center">199,00</div>
            <div class="col-md-2 col-xs-2 cart-product-center">129,99</div>
            <div class="col-md-2 col-xs-2 cart-product-center">1</div>
            <div class="col-md-1 col-xs-1 cart-product-center"><a class="cart-product-anchor" href="/Cart/Delete/1"><i
                    class="fas fa-trash-alt"></i></a></div>
        </div>
        <div class="cart-product row">
            <div class="col-md-1 col-xs-1"><img class="cart-img" src="/resources/img/Products/GB-RTX-3060-TI.jpg" alt="Zdjęcie">
            </div>
            <div class="col-md-4 col-xs-4 cart-product-center">Gigabyte RTX 3060Ti</div>
            <div class="col-md-2 col-xs-2 cart-product-center">199,00</div>
            <div class="col-md-2 col-xs-2 cart-product-center">129,99</div>
            <div class="col-md-2 col-xs-2 cart-product-center">2</div>
            <div class="col-md-1 col-xs-1 cart-product-center"><a class="cart-product-anchor" href="/Cart/Delete/1011"><i
                    class="fas fa-trash-alt"></i></a></div>
        </div>
        <a class="cart-checkout-btn" href="/Checkout/DescribeBuyer">
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
                    <div class="col-xs-12 col-md-3 col-lg-3">
                        <div class="product">
                            <div class="product-img">
                                <a href="/Products/Details/2"><img src="/resources/img/Products/INTEL-I7-10700K.jpg" alt="Zdjęcie"></a>
                            </div>
                            <div class="product-title">
                                Intel I7 10700k
                            </div>
                            <div class="product-price">
                                1399,99&nbsp;PLN
                            </div>
                            <div class="product-special-price">
                                99,99&nbsp;PLN </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3 col-lg-3">
                        <div class="product">
                            <div class="product-img">
                                <a href="/Products/Details/3"><img src="/resources/img/Products/INTEL-C2-Q6600.jpg" alt="Zdjęcie"></a>
                            </div>
                            <div class="product-title">
                                Intel Dual Quad Core Q6600
                            </div>
                            <div class="product-price">
                                199,99&nbsp;PLN
                            </div>
                            <div class="product-special-price">
                                &nbsp; </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3 col-lg-3">
                        <div class="product">
                            <div class="product-img">
                                <a href="/Products/Details/7"><img src="/resources/img/Products/AMD-R9-5950X.jpg" alt="Zdjęcie"></a>
                            </div>
                            <div class="product-title">
                                Amd Ryzen 5950X
                            </div>
                            <div class="product-price">
                                3299,99&nbsp;PLN
                            </div>
                            <div class="product-special-price">
                                &nbsp; </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3 col-lg-3">
                        <div class="product">
                            <div class="product-img">
                                <a href="/Products/Details/1011"><img src="/resources/img/Products/GB-RTX-3060-TI.jpg" alt="Zdjęcie"></a>
                            </div>
                            <div class="product-title">
                                Gigabyte RTX 3060Ti
                            </div>
                            <div class="product-price">
                                4499,99&nbsp;PLN
                            </div>
                            <div class="product-special-price">
                                99,99&nbsp;PLN </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3 col-lg-3">
                        <div class="product">
                            <div class="product-img">
                                <a href="/Products/Details/1"><img src="/resources/img/Products/INTEL-I5-10600K.jpg" alt="Zdjęcie"></a>
                            </div>
                            <div class="product-title">
                                Intel I5 10600k
                            </div>
                            <div class="product-price">
                                899,99&nbsp;PLN
                            </div>
                            <div class="product-special-price">
                                99,99&nbsp;PLN </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3 col-lg-3">
                        <div class="product">
                            <div class="product-img">
                                <a href="/Products/Details/1014"><img src="/resources/img/Products/GB-Z590-AORUS-ULTRA.jpg"
                                                                      alt="Zdjęcie"></a>
                            </div>
                            <div class="product-title">
                                Gigabyte Z590 Aorus Ultra
                            </div>
                            <div class="product-price">
                                899,99&nbsp;PLN
                            </div>
                            <div class="product-special-price">
                                99,99&nbsp;PLN </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3 col-lg-3">
                        <div class="product">
                            <div class="product-img">
                                <a href="/Products/Details/1016"><img src="/resources/img/Products/INTEL-I7-12700K.jpg" alt="Zdjęcie"></a>
                            </div>
                            <div class="product-title">
                                Intel I5 12700k
                            </div>
                            <div class="product-price">
                                2159,99&nbsp;PLN
                            </div>
                            <div class="product-special-price">
                                &nbsp; </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3 col-lg-3">
                        <div class="product">
                            <div class="product-img">
                                <a href="/Products/Details/5"><img src="/resources/img/Products/AMD-R5-1600.jpg" alt="Zdjęcie"></a>
                            </div>
                            <div class="product-title">
                                Amd Ryzen 1600
                            </div>
                            <div class="product-price">
                                279,99&nbsp;PLN
                            </div>
                            <div class="product-special-price">
                                &nbsp; </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3 col-lg-3">
                        <div class="product">
                            <div class="product-img">
                                <a href="/Products/Details/6"><img src="/resources/img/Products/AMD-R7-3700X.jpg" alt="Zdjęcie"></a>
                            </div>
                            <div class="product-title">
                                Amd Ryzen 3700X
                            </div>
                            <div class="product-price">
                                1299,99&nbsp;PLN
                            </div>
                            <div class="product-special-price">
                                &nbsp; </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>
