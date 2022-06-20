<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="../head.jsp" %>
    <title>Lista użytkowników</title>
</head>
<body>
<% if (session.getAttribute("administrator")=="true" || session.getAttribute("moderator")=="true") { %>
<%@include file="../header.jsp" %>



<div class="body-container">
    <h1>Lista użytkowników</h1>
    <% if (session.getAttribute("administrator")=="true") { %>
    <p>
        <a href="/admin/accountCreate" class="btn btn-primary">Stwórz nowy</a>
    </p>
    <% } %>
    <table class="table">
        <thead>
        <tr>
            <th>
                Id
            </th>
            <th>
                Login
            </th>
            <th>
                Adres
            </th>
            <th>
                Email
            </th>
            <th>
                Telefon
            </th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${accountList}" var="account">
            <tr>
                <td>
                        ${account.accountId}
                </td>
                <td>
                        ${account.login}
                </td>
                <td>
                        ${account.address}
                </td>
                <td>
                        ${account.email}
                </td>
                <td>
                        ${account.phone}
                </td>
                <td>
                    <a href="#">Edytuj</a> |
                    <a href="#">Usuń</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="../footer.jsp" %>
<% } %>
</body>
</html>
