<%--
  Created by IntelliJ IDEA.
  User: maier
  Date: 09.03.2018
  Time: 09:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User registration</title>
    <link href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<form method="post" action="registrieren">
    Benutzername:<input type="text" name="username">
    Passwort:<input type="password" name="password">

    <input type="submit" value="Registrieren" class="btn btn-success">
</form>

</body>
</html>
