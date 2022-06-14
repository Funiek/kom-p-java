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

        <form action="/User/SignIn" method="post" novalidate="novalidate">
            <div class="container">
                <!--form class="form-horizontal" method="post"-->
                <div class="form-group">
                    <div class="label-custom col-sm-12">

                    </div>
                </div>
                <div class="form-group">
                    <div class="label-custom col-sm-12">
                        <label class="control-label" for="Login">Login</label>
                    </div>
                    <div class="col-sm-3">
                        <input class="form-control form-input-text-custome valid" type="text" data-val="true"
                               data-val-length="The field Login must be a string with a maximum length of 30." data-val-length-max="30"
                               data-val-required="To pole jest wymagane!" id="Login" maxlength="30" name="Login" value=""
                               aria-describedby="Login-error" aria-invalid="false">
                    </div>
                </div>
                <div class="form-group">
                    <div class="label-custom col-sm-12"><label class="control-label col-sm2" for="Password">Password</label></div>
                    <div class="col-sm-3">
                        <input type="password" class="form-control form-input-text-custome valid" data-val="true"
                               data-val-minlength="Hasło jest za krótkie!" data-val-minlength-min="6"
                               data-val-required="To pole jest wymagane!" id="Password" name="Password" aria-describedby="Password-error"
                               aria-invalid="false">
                    </div>
                </div>
                <div class="form-group col-sm-12 form-submit-button-custom">
                    <div class=" col-sm-7">
                        <!--<input type="submit" class="btn" id="btnProceed" value="Zatwierdź" />-->
                        <button class="btn shop-btn effect01">Zatwierdź</button>
                    </div>
                    <div class=" col-sm-5"></div>
                </div>
                <!--form-->
            </div>
            <input name="__RequestVerificationToken" type="hidden"
                   value="CfDJ8E-WB332hMZPmhd1ryOHvTk3IND3Jgi70_-Mj3d2Giq-nq28v7OHKuufHMKe_dXWHHAnjPlyk3X9bmfQXWhMumiJrtuxBC1FsWeoaUPhHVYfezprKahcVHMtLuIFZ3_t5JFvPDQZeibo09vuNm12liM">
        </form>
    </div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>
