<%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 14.06.2022
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
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


        <form method="post" action="/User/SignUp" novalidate="novalidate">
            <div class="container">
                <!--div asp-validation-summary="ModelOnly" class="text-danger col-12"></!--div>-->
                <div class="row form-group ">
                    <div class="col-sm-12">
                        <label class="control-label label-custom col-12" for="user_Login">Login</label>
                    </div>
                    <div class="col-sm-4">
                        <input class="form-control form-input-text-custome" type="text" data-val="true"
                               data-val-length="The field Login must be a string with a maximum length of 30." data-val-length-max="30"
                               data-val-required="To pole jest wymagane!" id="user_Login" maxlength="30" name="user.Login" value="">
                    </div>
                    <div class="col-sm-8">
            <span class="text-danger field-validation-valid" data-valmsg-for="user.Login"
                  data-valmsg-replace="true"></span>
                    </div>

                </div>


                <div class="row form-group  ">
                    <div class="col-sm-12">
                        <label class="control-label label-custom col-12" for="PasswordVM">Hasło</label>
                    </div>
                    <div class="col-sm-4">
                        <input type="password" class="form-control form-input-text-custome" data-val="true"
                               data-val-minlength="Hasło jest za krótkie!" data-val-minlength-min="6"
                               data-val-required="To pole jest wymagane!" id="PasswordVM" name="PasswordVM">
                    </div>
                    <div class="col-sm-8">
            <span class="text-danger  field-validation-valid" data-valmsg-for="PasswordVM"
                  data-valmsg-replace="true"></span>
                    </div>

                </div>



                <div class=" row form-group  ">
                    <div class="col-sm-12">
                        <label class="control-label label-custom col-12" for="user_Email">Emial</label>
                    </div>
                    <div class="col-sm-4">
                        <input class="form-control form-input-text-custome" type="email" data-val="true"
                               data-val-email="Fraza nie przypomina adresu email"
                               data-val-length="The field Emial must be a string with a maximum length of 100." data-val-length-max="100"
                               data-val-required="To pole jest wymagane!" id="user_Email" maxlength="100" name="user.Email" value="">
                    </div>
                    <div class="col-sm-8">
            <span class="text-danger  field-validation-valid" data-valmsg-for="user.Email"
                  data-valmsg-replace="true"></span>
                    </div>

                </div>


                <div class=" row form-group  ">
                    <div class="col-sm-12">
                        <label class="control-label label-custom col-12" for="user_Name">Name</label>
                    </div>
                    <div class="col-sm-4">
                        <input class="form-control form-input-text-custome" type="text" data-val="true"
                               data-val-length="The field Name must be a string with a maximum length of 100." data-val-length-max="100"
                               data-val-minlength="Imie jest za krótkie!" data-val-minlength-min="2"
                               data-val-required="To pole jest wymagane!" id="user_Name" maxlength="100" name="user.Name" value="">
                    </div>
                    <div class="col-sm-8">
            <span class="text-danger  field-validation-valid" data-valmsg-for="user.Name"
                  data-valmsg-replace="true"></span>
                    </div>

                </div>


                <div class=" row form-group  ">
                    <div class="col-sm-12">
                        <label class="control-label label-custom col-12" for="user_Surname">Nazwisko</label>
                    </div>
                    <div class="col-sm-4">
                        <input class="form-control form-input-text-custome" type="text" data-val="true"
                               data-val-length="The field Nazwisko must be a string with a maximum length of 100."
                               data-val-length-max="100" data-val-minlength="Nazwisko jest za krótkie!" data-val-minlength-min="2"
                               data-val-required="To pole jest wymagane!" id="user_Surname" maxlength="100" name="user.Surname" value="">
                    </div>
                    <div class="col-sm-8">
            <span class="text-danger  field-validation-valid" data-valmsg-for="user.Surname"
                  data-valmsg-replace="true"></span>
                    </div>

                </div>


                <div class=" row form-group  ">
                    <div class="col-sm-12">
                        <label class="control-label label-custom col-12" for="user_Phone">Telefon</label>
                    </div>
                    <div class="col-sm-4">
                        <input class="form-control form-input-text-custome" type="text" data-val="true"
                               data-val-length="The field Telefon must be a string with a maximum length of 13." data-val-length-max="13"
                               data-val-minlength="Telefon jest za krótki!" data-val-minlength-min="9"
                               data-val-required="To pole jest wymagane!" id="user_Phone" maxlength="13" name="user.Phone" value="">
                    </div>
                    <div class="col-sm-8">
            <span class="text-danger  field-validation-valid" data-valmsg-for="user.Phone"
                  data-valmsg-replace="true"></span>
                    </div>

                </div>


                <div class=" row form-group  ">
                    <div class="col-sm-12">
                        <label class="control-label label-custom col-12" for="user_Address">Adres</label>
                    </div>
                    <div class="col-sm-4">
                        <input class="form-control form-input-text-custome" type="text" data-val="true"
                               data-val-length="The field Adres must be a string with a maximum length of 100." data-val-length-max="100"
                               data-val-minlength="Adres jest za krótki!" data-val-minlength-min="5"
                               data-val-required="To pole jest wymagane!" id="user_Address" maxlength="100" name="user.Address" value="">
                    </div>
                    <div class="col-sm-8">
            <span class="text-danger  field-validation-valid" data-valmsg-for="user.Address"
                  data-valmsg-replace="true"></span>
                    </div>

                </div>

                <div class="form-group form-submit-button-custom row">
                    <button type="submit" class="btn shop-btn effect01">Stwórz </button>
                </div>
            </div>
            <input name="__RequestVerificationToken" type="hidden"
                   value="CfDJ8E-WB332hMZPmhd1ryOHvTlp8nt6V-bjDVU7P2y0H2iaeEhQp1M2VUD2-mWaT3A3JHIneeqZdkKrbyeGu6do7Q7ynb5U3AUe8BxlH9-XxpgzWevDDVo6F10P4KU5po3lGBIr214XVWc-mZeyW4fXOCc">
        </form>


    </div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>
