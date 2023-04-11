<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>

<body>
<div class="center">
    <h1>Login</h1>
    <h4 style="color:red">${error}</h4>
    <form method="post" action="${pageContext.request.contextPath}/login">
        <input type="text" placeholder="Login" name="login" required><br>
        <input type="password" placeholder="Password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
    <a href="${pageContext.request.contextPath}/drivers/add">
        <input type="submit" value="Register driver"/>
    </a>
</div>
</body>
</html>
