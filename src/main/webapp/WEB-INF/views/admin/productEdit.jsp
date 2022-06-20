<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="../../../resources/css/styles.css" />
    <title>Edytuj produkt</title>
</head>
<body>
<% if (session.getAttribute("administrator")=="true" || session.getAttribute("moderator")=="true") { %>
<%@include file="../header.jsp" %>

<div class="body-container">
    <h1>Edytuj produkt</h1>

    <h4>Produkt</h4>
    <hr />
    <div class="row">
        <div class="col-md-4">
            <form:form action="/admin/productEdit" method="post" modelAttribute="product">
                <form:input path="productId" type="hidden" value="${product.productId}" />
                <div class="form-group">
                    <form:label path="title" class="control-label">Nazwa</form:label>
                    <form:input path="title" class="form-control" value="${product.title}" />
                </div>
                <div class="form-group">
                    <form:label path="sku" class="control-label">SKU</form:label>
                    <form:input path="sku" class="form-control" value="${product.sku}" />
                </div>
                <div class="form-group">
                    <form:label path="price" class="control-label">Cena</form:label>
                    <form:input path="price" class="form-control" value="${product.price}" />
                </div>
                <div class="form-group">
                    <form:label path="category.categoryId" class="control-label">Id kategorii</form:label>
                    <form:input path="category.categoryId" class="form-control" value="${product.category.categoryId}" />
                </div>
                <div class="form-group">
                    <h3>Promo</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td><label><form:radiobutton path="promo" value="true" />True</label></td>
                            <td><label><form:radiobutton path="promo" value="false" checked="checked" />False</label></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="form-group">
                    <h3>Widoczny</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td><label><form:radiobutton path="visible" value="true" checked="checked" />True</label></td>
                            <td><label><form:radiobutton path="visible" value="false" />False</label></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="form-group">
                    <form:button class="btn btn-primary" >Aktualizuj</form:button>
                </div>
            </form:form>
        </div>
    </div>

    <div>
        <a href="/admin/productList">Powrót do listy produktów</a>
    </div>

</div>

<%@include file="../footer.jsp" %>
<% } %>
</body>
</html>
