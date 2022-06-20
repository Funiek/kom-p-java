<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Stwórz konto</title>
</head>
<body>
<% if (session.getAttribute("administrator")=="true") { %>
<%@include file="../header.jsp" %>

<div class="body-container">
  <h1>Stwórz konto</h1>

    <h4>Konto</h4>
    <hr />
    <div class="row">
        <div class="col-md-4">
            <form:form action="accountCreate" method="post" modelAttribute="account">
                <div class="form-group">
                    <form:label path="login" class="control-label">Login</form:label>
                    <form:input path="login" class="form-control" />
                </div>
                <div class="form-group">
                    <form:label path="password" class="control-label">Hasło</form:label>
                    <form:input path="password" class="form-control" />
                </div>
                <div class="form-group">
                    <form:label path="email" class="control-label">Email</form:label>
                    <form:input path="email" class="form-control" />
                </div>
                <div class="form-group">
                    <form:label path="phone" class="control-label">Telefon</form:label>
                    <form:input path="phone" class="form-control" />
                </div>
                <div class="form-group">
                    <form:label path="address" class="control-label">Adres</form:label>
                    <form:input path="address" class="form-control" />
                </div>
                <div class="form-group">
                    <h3>Role</h3>
                    <table>
                        <tbody>
                        <tr>
                            <td><label><form:radiobutton path="role" value="Administrator" />Administrator</label></td>
                            <td><label><form:radiobutton path="role" value="Moderator" />Moderator</label></td>
                            <td><label><form:radiobutton path="role" value="Uzytkownik" />Uzytkownik</label></td>
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
        <a href="/admin/accountList">Powrót do listy kont</a>
    </div>
</div>

<%@include file="../footer.jsp" %>
<% } %>
</body>
</html>
