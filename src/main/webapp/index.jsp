
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Bootstrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!--JQUERY-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!--Awesome Font-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!--KOMP Static Resources-->
    <link rel="stylesheet" href="resources/css/styles.css" />

    <title>KOMP - Strona Główna</title>
</head>
<body>
<header>
    <%@include file="WEB-INF/views/header.jsp"%>
</header>
<div class="body-container">
    <div class="banner">
        <a href="#"><img src="/resources/img/WYSIWYG/index-banner.jpg" alt="Baner"/></a>
    </div>

    <div class="promo-list">
        <div class="promo-list-title">Nowości</div>
        <div class="promo-list-wrapper">
            <div class="row">
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="product">
                        <div class="product-img">
                            <a href="/product/14">
                                <img src="/resources/img/Products/INTEL-I7-12700K.jpg" alt="Zdjęcie" />
                            </a>
                        </div>
                        <div class="product-title">Intel I7 12700k</div>
                        <div style="text-decoration: none;" class="product-price">1499.99&nbsp;PLN</div>

                        <div class="product-special-price">&nbsp;</div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="product">
                        <div class="product-img">
                            <a href="/product/12"
                            ><img src="/resources/img/Products/INTEL-I5-12400F.jpg" alt="Zdjęcie"
                            /></a>
                        </div>
                        <div class="product-title">Intel I5 12400F</div>
                        <div style="text-decoration: none;" class="product-price">699.99&nbsp;PLN</div>

                        <div class="product-special-price">&nbsp;</div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="product">
                        <div class="product-img">
                            <a href="/product/8"
                            ><img src="/resources/img/Products/GB-Z590-AORUS-ULTRA.jpg" alt="Zdjęcie"
                            /></a>
                        </div>
                        <div class="product-title">Gigabyte Z590 Aorus Ultra</div>
                        <div class="product-price">1199.99&nbsp;PLN</div>

                        <div class="product-special-price">99,99&nbsp;PLN</div>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3 col-lg-3">
                    <div class="product">
                        <div class="product-img">
                            <a href="/product/7"
                            ><img src="/resources/img/Products/GB-RX-6500XT.jpg" alt="Zdjęcie"
                            /></a>
                        </div>
                        <div class="product-title">Gigabyte Radeon RX 6500XT</div>
                        <div style="text-decoration: none;" class="product-price">1299.99&nbsp;PLN</div>

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