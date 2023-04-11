<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
<h1 class="table_dark">Add driver to car:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Car</th>
        <th>Driver</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <select name="car_id" form="car" required>
            <option value="">-- Choose Car --</option>
            <c:forEach items="${cars}" var="car">
                <option value="${car.id}">
                    <c:out value="${car.id}" />.
                    <c:out value="${car.model}" />
                </option>
            </c:forEach>
            </select><br>
        </td>
        <td>
            <select name="driver_id" form="car" required>
                <option value="">-- Choose driver for car --</option>
                <c:forEach items="${drivers}" var="driver">
                    <option value="${driver.id}">
                        <c:out value="${driver.id}" />.
                        <c:out value="${driver.name}" />,
                        <c:out value="${driver.licenseNumber}" />
                    </option>
                </c:forEach>
            </select><br>
        </td>
        <td>
            <input type="submit" name="add" form="car">
        </td>
    </tr>
</table>
<div class="buttons">
    <a class="url" href="${pageContext.request.contextPath}/index">
        Home
    </a>
    <a class="url" href="${pageContext.request.contextPath}/cars">
        Display all cars
    </a>
</div>
</body>
</html>
