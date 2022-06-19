<%@ page import="com.ds360.komp.model.CartProduct" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: Krzysiek
  Date: 13.06.2022
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="navbar navbar-default navbar-fixed-top komp-navbar">
    <div><a class="navbar-logo" href="/">KOM-P</a></div>
    <ul class="nav-wrapper float-left">
        <li>
            <a href="/category/1">Procesory</a>
        </li>
        <li>
            <a href="/category/2">Karty Graficzne</a>
        </li>
        <li>
            <a href="/category/3">Płyty Główne</a>
        </li>
        <li>
            <a href="/category/0">PROMOCJE</a>
        </li>

        <% if (session.getAttribute("administrator")=="true" || session.getAttribute("moderator")=="true") { %>
        <li>
            <a href="/admin">Admin Panel</a>
        </li>
        <% } %>
    </ul>
    <ul class="nav-wrapper float-right">
        <li>
            <a href="/account/details">${sessionScope["accountLogin"]}</a>
        </li>
        <li>
            <a href="/cart">
                <i class="fas fa-shopping-cart"></i>&nbsp;
            </a>
        </li>
        <% if (session.getAttribute("logged")!="true") { %>
        <li>
            <a href="/account/signIn">Zaloguj się</a>
        </li>
        <li>
            <a href="/account/signUp">Zarejestruj się</a>
        </li>
        <% } else { %>
        <li>
            <a href="/account/logout">Wyloguj</a>
        </li>
        <% } %>
    </ul>
    <div class="clear"></div>
</div>