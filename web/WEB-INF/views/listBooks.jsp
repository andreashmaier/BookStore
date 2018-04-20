<%--
  Created by IntelliJ IDEA.
  User: maier
  Date: 23.03.2018
  Time: 09:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Bücherliste</title>
    <link href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<%@include file="../common/nav.jspf"%>
<h1>Bücherliste</h1>
Ihre Bücher sind:
<div class="container">
    <table class="table table-striped">
        <tr>
            <th>ID</th>
            <th>ISBN</th>
            <th>Titel</th>
            <th>Autor</th>
            <th>Aktion</th>
        </tr>
        <c:forEach var="book" items="${books}">
            <tr>
                <td>${book.id}</td>
                <td>${book.isbn}</td>
                <td>${book.titel}</td>
                <td>${book.autor}</td>
                <td><a href="deleteBooks.do?id=${book.id}" class="btn btn-danger">Löschen</a></td>
            </tr>
        </c:forEach>
    </table>

    <a href="addBooks.do" class="btn btn-info">Neu</a>
</div>
</body>
</html>
