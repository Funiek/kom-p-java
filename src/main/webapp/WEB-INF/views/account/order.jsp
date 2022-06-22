<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <link rel="stylesheet" href="/resources/css/styles.css" />
  <title>Dane konta</title>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="body-container">
  <h1>Zamówienie - ${orderProductList.get(0).order.orderId}</h1>
  <hr>
  <table>
    <thead>
      <tr>
        <th scope="col">Nazwa</th>
        <th scope="col">Ilosc</th>
      </tr>
    </thead>
    <tbody>

    <c:forEach items="${orderProductList}" var="item">
      <tr>
        <th scope="row">${item.product.title}</th>
        <td>${item.qty}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>

</div>
<%@include file="../footer.jsp" %>
</body>
</html>

