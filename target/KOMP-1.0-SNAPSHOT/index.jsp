<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 05.06.2022
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@include file="WEB-INF/views/head.jsp"%>
    <title>KOMP - Strona Główna</title>
</head>
<body>
<header>
    <%@include file="WEB-INF/views/header.jsp"%>
</header>
<h2>AAAA</h2>
<a class="product-special-price" href="product">Click here...</a>
<div class="body-container">
    <div class="banner">
        <a href="#"><img src="<c:url value="/resources/img/WYSIWYG/index-banner.jpg"/>"  alt="Banner"/></a>
    </div>

    <div class="promo-list">
        <div class="promo-list-title">Nowości</div>
        <div class="promo-list-wrapper">
            <div class="row">
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="product">
                        <div class="product-img">
                            <a href="/Products/Details/1016">
                                <img src="/resources/img/Products/INTEL-I7-12700K.jpg" alt="Zdjęcie" />
                            </a>
                        </div>
                        <div class="product-title">Intel I5 12700k</div>
                        <div class="product-price">2159,99&nbsp;PLN</div>

                        <div class="product-special-price">&nbsp;</div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="product">
                        <div class="product-img">
                            <a href="/Products/Details/1015"
                            ><img src="/resources/img/Products/INTEL-I5-12400F.jpg" alt="Zdjęcie"
                            /></a>
                        </div>
                        <div class="product-title">Intel I5 12400F</div>
                        <div class="product-price">1299,99&nbsp;PLN</div>

                        <div class="product-special-price">&nbsp;</div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="product">
                        <div class="product-img">
                            <a href="/Products/Details/1014"
                            ><img src="/resources/img/Products/GB-Z590-AORUS-ULTRA.jpg" alt="Zdjęcie"
                            /></a>
                        </div>
                        <div class="product-title">Gigabyte Z590 Aorus Ultra</div>
                        <div class="product-price">899,99&nbsp;PLN</div>

                        <div class="product-special-price">99,99&nbsp;PLN</div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="product">
                        <div class="product-img">
                            <a href="/Products/Details/1013"
                            ><img src="/resources/img/Products/GB-RX-6500XT.jpg" alt="Zdjęcie"
                            /></a>
                        </div>
                        <div class="product-title">Gigabyte Radeon RX 6500XT</div>
                        <div class="product-price">3599,99&nbsp;PLN</div>

                        <div class="product-special-price">&nbsp;</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="WEB-INF/views/footer.jsp"%>
</body>
</html>