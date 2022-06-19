<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 14.06.2022
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Zaloguj się</title>
    <link rel="stylesheet" href="../resources/css/form.css">
</head>
<body>
<%@include file="../header.jsp" %>
<div class="body-container">
    <div class="containter-custom">
        <h1 class="header">Logowanie</h1>

        <form:form action="signIn" method="post" modelAttribute="account">
            <div class="container">
                <div class="form-group">
                    <div class="label-custom col-sm-12">
                        <form:label path="login" class="control-label" for="Login">Login</form:label>
                    </div>
                    <div class="col-sm-3">
                        <form:input path="login" class="form-control form-input-text-custome valid" type="text" maxlength="30" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label-custom col-sm-12">
                        <form:label path="password" class="control-label col-sm2" for="Password">Hasło</form:label>
                    </div>
                    <div class="col-sm-3">
                        <form:input path="password" type="password" class="form-control form-input-text-custome valid" />
                    </div>
                </div>
                <div class="form-group col-sm-12 form-submit-button-custom">
                    <div class=" col-sm-7">
                        <form:button class="btn shop-btn effect01">Zatwierdź</form:button>
                    </div>
                    <div class="col-sm-5"></div>
                </div>
            </div>
        </form:form>
    </div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>
