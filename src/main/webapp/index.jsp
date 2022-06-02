<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>KOM-P</title>
</head>
<body>
<h2>Hello World!</h2>
<div>
    <h4>Podaj dane</h4>

    <form:form action="login" method="post" modelAttribute="user">
        <form:label path="login">Login </form:label>
        <form:input type="text" path="login" placeholder="Nazwa uzytkownika" />

        <br />
        <form:label path="password">Haslo </form:label>
            <form:input type="text" path="password" placeholder="Haslo" />

        <input type="submit" value="Zaloguj" />
    </form:form>



</div>
</body>
</html>
