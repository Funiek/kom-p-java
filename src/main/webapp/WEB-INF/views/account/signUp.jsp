<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Zarejestruj się</title>
    <link rel="stylesheet" href="../resources/css/form.css">
</head>
<body>
<%@include file="../header.jsp" %>
<div class="body-container">

    <div class="containter-custom">

        <h1 class="header">Zarejestruj się</h1>
        <form:form action="signUp" method="post" modelAttribute="account">
            <div class="container">
                <div class="row form-group">
                    <div class="col-sm-12">
                        <form:label path="login" class="control-label label-custom col-12">Login</form:label>
                    </div>
                    <div class="col-sm-4">
                        <form:input path="login" class="form-control form-input-text-custome" type="text" maxlength="30" />
                    </div>
                    <div class="col-sm-8">
                        <span class="text-danger field-validation-valid"></span>
                    </div>
                </div>


                <div class="row form-group">
                    <div class="col-sm-12">
                        <form:label path="password" class="control-label label-custom col-12">Hasło</form:label>
                    </div>
                    <div class="col-sm-4">
                        <form:input path="password" type="password" class="form-control form-input-text-custome" />
                    </div>
                    <div class="col-sm-8">
                        <span class="text-danger  field-validation-valid"></span>
                    </div>
                </div>


                <div class=" row form-group  ">
                    <div class="col-sm-12">
                        <form:label path="email" class="control-label label-custom col-12">Email</form:label>
                    </div>
                    <div class="col-sm-4">
                        <form:input path="email" class="form-control form-input-text-custome" type="email" maxlength="100" />
                    </div>
                    <div class="col-sm-8">
            <span class="text-danger  field-validation-valid" data-valmsg-for="user.Email"
                  data-valmsg-replace="true"></span>
                    </div>

                </div>

                <div class=" row form-group  ">
                    <div class="col-sm-12">
                        <form:label path="phone" class="control-label label-custom col-12">Telefon</form:label>
                    </div>
                    <div class="col-sm-4">
                        <form:input path="phone" class="form-control form-input-text-custome" type="text" maxlength="13" />
                    </div>
                    <div class="col-sm-8">
                        <span class="text-danger field-validation-valid"></span>
                    </div>

                </div>


                <div class=" row form-group  ">
                    <div class="col-sm-12">
                        <form:label path="address" class="control-label label-custom col-12">Adres</form:label>
                    </div>
                    <div class="col-sm-4">
                        <form:input path="address" class="form-control form-input-text-custome" type="text" maxlength="100" />
                    </div>
                    <div class="col-sm-8">
                        <span class="text-danger field-validation-valid"></span>
                    </div>

                </div>

                <div class="form-group form-submit-button-custom row">
                    <button type="submit" class="btn shop-btn effect01">Stwórz</button>
                </div>
            </div>
        </form:form>
    </div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>
