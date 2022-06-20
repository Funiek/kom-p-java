<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Stwórz produkt</title>
</head>
<body>
<% if (session.getAttribute("administrator")=="true" || session.getAttribute("moderator")=="true") { %>
<%@include file="../header.jsp" %>

<div class="body-container">
    <h1>Stwórz produkt</h1>

    <h4>Produkt</h4>
    <hr />
    <div class="row">
        <div class="col-md-4">
            <form:form action="productCreate" method="post" modelAttribute="product">
                <div class="form-group">
                    <form:label path="title" class="control-label">Nazwa</form:label>
                    <form:input path="title" class="form-control" />
                </div>
                <div class="form-group">
                    <form:label path="sku" class="control-label">SKU</form:label>
                    <form:input path="sku" class="form-control" />
                </div>
                <div class="form-group">
                    <form:label path="price" class="control-label">Cena</form:label>
                    <form:input path="price" class="form-control" />
                </div>
                <div class="form-group">
                    <form:label path="category.categoryId" class="control-label">Id kategorii</form:label>
                    <form:input path="category.categoryId" class="form-control" />
                </div>
                <div class="form-group">
                    <h3>Promo</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td><label><form:radiobutton path="promo" value="true" />True</label></td>
                            <td><label><form:radiobutton path="promo" value="false" />False</label></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="form-group">
                    <h3>Widoczny</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td><label><form:radiobutton path="visible" value="true" />True</label></td>
                            <td><label><form:radiobutton path="visible" value="false" />False</label></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="form-group">
                    <form:button class="btn btn-primary" >Stwórz</form:button>
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
