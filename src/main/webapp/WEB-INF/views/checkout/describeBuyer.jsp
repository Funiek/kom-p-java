<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 19.06.2022
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp"%>
    <title>Zaloguj się lub kontynuuj bez logowania</title>
</head>
<body>
<%@include file="../header.jsp"%>
<div class="body-container">
    <div class="row">
        <div class="col-md-6 describe-buyer-left">
            <h2>Nie jesteś zalogowany.</h2>
            <p>
                Jeżeli chciałbyś wygodniej przeprowadzać transakcje zaloguj się, bądź
                zarejestruj. Pomoże Ci to również w śledzeniu swoich przyszłych
                zamówień, jak i pozwoli na skorzystanie z niesamowitych promocji!
            </p>
            <a href="/checkout/details">
                <div class="btn without-login-btn effect01">
                    Kontynuuj bez logowania
                </div>
            </a>
        </div>
        <div class="col-md-6 describe-buyer-right">
            <h2>Zaloguj się</h2>

            <form:form action="describeBuyer" method="post" modelAttribute="account">
                <div class="container">
                    <div class="form-group">
                        <div class="label-custom col-sm-12"></div>
                    </div>
                    <div class="form-group">
                        <div class="label-custom col-sm-12">
                            <form:label path="login" class="control-label">Login</form:label>
                        </div>
                        <div class="col-sm-3">
                            <form:input path="login" class="form-control form-input-text-custome" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label-custom col-sm-12">
                            <form:label path="password" class="control-label col-sm2">Hasło</form:label>
                        </div>
                        <div class="col-sm-3">
                            <form:input path="password" type="password" class="form-control form-input-text-custome" />
                        </div>
                    </div>
                    <div class="form-group col-sm-12 form-submit-button-custom">
                        <div class="col-sm-7">
                            <form:button class="btn shop-btn effect01">Zatwierdź</form:button>
                        </div>
                        <div class="col-sm-5"></div>
                    </div>
                </div>
            </form:form>
        </div>
        <div class="clear"></div>
    </div>
</div>
<%@include file="../footer.jsp"%>
</body>
</html>
